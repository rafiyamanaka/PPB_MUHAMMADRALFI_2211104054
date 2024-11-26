import 'package:flutter/material.dart';
import 'db_helper.dart';
import 'mahasiswa.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> _students = [];

  @override
  void initState() {
    super.initState();
    _loadStudents();
  }

  void _loadStudents() async {
    final data = await DatabaseHelper.instance.getStudents();
    setState(() {
      _students = data;
    });
  }

  void _navigateToAddPage() async {
    final result = await Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const AddStudentPage()),
    );
    if (result == true) _loadStudents();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        centerTitle: true,
        title: const Text('SQLite Biodata Mahasiswa'),
      ),
      body: _students.isEmpty
          ? const Center(
              child: Text('Belum ada data mahasiswa.'),
            )
          : ListView.builder(
              itemCount: _students.length,
              itemBuilder: (context, index) {
                final student = _students[index];
                return Card(
                  margin: const EdgeInsets.all(8.0),
                  child: ListTile(
                    title: Text(student['nama']),
                    subtitle: Text(
                      'NIM: ${student['nim']}\nAlamat: ${student['alamat']}\nHobi: ${student['hobi']}',
                    ),
                  ),
                );
              },
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: _navigateToAddPage,
        child: const Icon(Icons.add),
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
      ),
    );
  }
}

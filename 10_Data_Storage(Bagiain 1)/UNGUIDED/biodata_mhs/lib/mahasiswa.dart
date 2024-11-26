import 'package:flutter/material.dart';
import 'db_helper.dart';

class AddStudentPage extends StatefulWidget {
  const AddStudentPage({Key? key}) : super(key: key);

  @override
  State<AddStudentPage> createState() => _AddStudentPageState();
}

class _AddStudentPageState extends State<AddStudentPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _nimController = TextEditingController();
  final _addressController = TextEditingController();
  final _hobbyController = TextEditingController();

  void _saveStudent() async {
    if (_formKey.currentState!.validate()) {
      await DatabaseHelper.instance.insertStudent({
        'nama': _nameController.text,
        'nim': _nimController.text,
        'alamat': _addressController.text,
        'hobi': _hobbyController.text,
      });
      Navigator.pop(context, true); // Return to previous page
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(82, 170, 94, 1.0),
        centerTitle: true,
        title: const Text('Tambah Biodata Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(labelText: 'Nama'),
                validator: (value) => value!.isEmpty ? 'Nama tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _nimController,
                decoration: const InputDecoration(labelText: 'NIM'),
                validator: (value) => value!.isEmpty ? 'NIM tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _addressController,
                decoration: const InputDecoration(labelText: 'Alamat'),
                validator: (value) => value!.isEmpty ? 'Alamat tidak boleh kosong' : null,
              ),
              TextFormField(
                controller: _hobbyController,
                decoration: const InputDecoration(labelText: 'Hobi'),
                validator: (value) => value!.isEmpty ? 'Hobi tidak boleh kosong' : null,
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                
                onPressed: _saveStudent,
                child: const Text('Simpan'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

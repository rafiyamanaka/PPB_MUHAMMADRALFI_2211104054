import 'package:api/services/api_servise.dart';
import 'package:flutter/material.dart';

class HompegaeScreen extends StatefulWidget {
  const HompegaeScreen({super.key});

  @override
  State<HompegaeScreen> createState() => _HompegaeScreenState();
}

class _HompegaeScreenState extends State<HompegaeScreen> {
  List<dynamic> _posts = []; // Menyimpan list posts
  bool _isLoading = false; // Untuk indikator loading
  final ApiService _apiService = ApiService(); // Instance ApiService
  // Fungsi untuk menampilkan SnackBar
  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  // Fungsi untuk memanggil API dan menangani operasi
  Future<void> _handleApiOperation(
      Future<void> operation, String successMessage) async {
    setState(() {
      _isLoading = true;
    });
    try {
      await operation; // Menjalankan operasi API
      setState(() {
        _posts = _apiService.posts;
      });
      _showSnackBar(successMessage);
    } catch (e) {
      _showSnackBar('Error: $e');
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Page'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _isLoading
                    ? const Center(child: CircularProgressIndicator())
                    : _posts.isEmpty
                        ? const Text(
                            "Tekan tombol GET untuk mengambil data",
                            style: TextStyle(fontSize: 12),
                          )
                        : Expanded(
                            child: ListView.builder(
                              itemCount: _posts.length,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 12.0),
                                  child: Card(
                                    elevation: 4,
                                    child: ListTile(
                                      title: Text(
                                        _posts[index]['title'],
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12),
                                      ),
                                      subtitle: Text(
                                        _posts[index]['body'],
                                        style: const TextStyle(fontSize: 12),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ElevatedButton(
                      onPressed: () => _handleApiOperation(
                          _apiService.fetchPosts(), 'Data berhasil diambil!'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orange),
                      child: const Text('GET'),
                    ),
                    ElevatedButton(
                      onPressed: () => _handleApiOperation(
                          _apiService.createPost(),
                          'Data berhasil ditambahkan'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green),
                      child: const Text('POST'),
                    ),
                    ElevatedButton(
                      onPressed: () => _handleApiOperation(
                          _apiService.updatePost(),
                          'Data berhasil diupdate'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue),
                      child: const Text('UPDATE'),
                    ),
                    ElevatedButton(
                      onPressed: () => _handleApiOperation(
                          _apiService.deletePost(),
                          'Data berhasil dihapus'),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red),
                      child: const Text('DELETE'),
                    ),
                  ],
                ),
              ],
            )));
  }
}

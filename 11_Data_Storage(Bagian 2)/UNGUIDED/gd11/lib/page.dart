import 'package:flutter/material.dart';

class NotificationDetailPage extends StatelessWidget {
  final String nama;
  final String nim;
  final String kelas;
  final String prodi;

  // Konstruktor untuk menerima data dari notifikasi
  NotificationDetailPage({
    required this.nama,
    required this.nim,
    required this.kelas,
    required this.prodi,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Notifikasi'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Informasi Mahasiswa',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                _buildInfoRow('Nama:', nama),
                _buildInfoRow('NIM:', nim),
                _buildInfoRow('Kelas:', kelas),
                _buildInfoRow('Prodi:', prodi),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Widget helper untuk menampilkan baris informasi
  Widget _buildInfoRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            child: Text(
              value,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

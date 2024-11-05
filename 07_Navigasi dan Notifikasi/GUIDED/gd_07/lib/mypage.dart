import 'package:flutter/material.dart';
import 'package:gd_07/detailpage.dart';
import 'package:gd_07/product.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final List<Product> products = [
    Product(
      id: 1,
      nama: 'mouse',
      harga: 150000,
      gambarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGwiZempt1APRptrWToDLNA9QSqX04MlFxUw&s',
      deskripsi: 'Mouse Razer Kualitas Nomer 1'),
    Product(
      id: 2,
      nama: 'Keyboard',
      harga: 250000,
      gambarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGwiZempt1APRptrWToDLNA9QSqX04MlFxUw&s',
      deskripsi: 'Keyboard Mechanical'),
    Product(
      id: 3,
      nama: 'Monitor 4K',
      harga: 4000000,
      gambarUrl: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTGwiZempt1APRptrWToDLNA9QSqX04MlFxUw&s',
      deskripsi: 'Monitor Eksternal Samsung 4k'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class model'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final Product = products[index];
          return ListTile(
            leading: Image.network(
              Product.gambarUrl,
              width: 70,
              height: 70,
            ),
            title:  Text(Product.nama),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Rp ${Product.harga}'),
                Text(Product.deskripsi)
              ],
            ),
            onTap: () {
              print('Tap Layar berhasil');
              Navigator.push(context, MaterialPageRoute(
                builder: (_) => detailpage(data: 'this is data from myPage',)));
            },
          );
        }
        )
    );
  }
}
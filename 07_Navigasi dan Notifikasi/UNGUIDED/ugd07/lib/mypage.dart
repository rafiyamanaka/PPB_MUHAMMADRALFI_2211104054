import 'package:flutter/material.dart';
import 'package:ugd07/detail_product.dart';
import 'package:ugd07/product.dart';

class Mypage extends StatelessWidget {
  Mypage({super.key});

  final List<Product> products = [
  Product(
    id: 'p1',
    name: 'Macbook',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor metus id erat cursus tincidunt. Duis sed interdum arcu. Mauris gravida, nibh quis ultrices viverra, enim urna tempus augue, quis pretium felis nulla eu lorem.',
    price: 29.99,
    imageUrl: 'https://assets-us-01.kc-usercontent.com/a7507759-f4f5-0038-8fff-c1db251108c1/240d6c64-7f15-40c5-82d0-b0a09b3b9c09/rekomendasi-20-laptop-anak-sekolah-kuliah_advan-workplus.webp',
  ),
  Product(
    id: 'p2',
    name: 'Iphone',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor metus id erat cursus tincidunt. Duis sed interdum arcu. Mauris gravida, nibh quis ultrices viverra, enim urna tempus augue, quis pretium felis nulla eu lorem.',
    price: 39.99,
    imageUrl: 'https://www.digimap.co.id/cdn/shop/files/iPhone_14_Purple_PDP_Image_Position-1A__WWEN_3538caee-2b52-4bdd-a8a2-2117d88a6be6.jpg?v=1717740746',
  ),
  Product(
    id: 'p3',
    name: 'Smart Watch',
    description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempor metus id erat cursus tincidunt. Duis sed interdum arcu. Mauris gravida, nibh quis ultrices viverra, enim urna tempus augue, quis pretium felis nulla eu lorem.',
    price: 19.99,
    imageUrl: 'https://cdsassets.apple.com/live/SZLF0YNV/images/sp/111853_apple-watch-se-2nd-gen.png',
  ),
];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.network(product.imageUrl),
            title: Text(product.name),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
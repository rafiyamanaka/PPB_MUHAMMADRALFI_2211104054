// FILEPATH: d:/PPB_MUHAMMAD_RALFI_SE-06-2/14_Data Storage API/UNGUIDED/api/lib/screen/hompegae_screen.dart
import 'package:api/controller/controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:api/services/api_servise.dart';

class HompegaeScreen extends StatelessWidget {
  HompegaeScreen({super.key});

  final PostController postController = Get.put(PostController());

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
            Obx(() {
              if (postController.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              } else if (postController.posts.isEmpty) {
                return const Text(
                  "Tekan tombol GET untuk mengambil data",
                  style: TextStyle(fontSize: 12),
                );
              } else {
                return Expanded(
                  child: ListView.builder(
                    itemCount: postController.posts.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 12.0),
                        child: Card(
                          elevation: 4,
                          child: ListTile(
                            title: Text(
                              postController.posts[index]['title'],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                              ),
                            ),
                            subtitle: Text(
                              postController.posts[index]['body'],
                              style: const TextStyle(fontSize: 12),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                );
              }
            }),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: postController.fetchPosts,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
                  child: const Text('GET'),
                ),
                ElevatedButton(
                  onPressed: postController.createPost,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                  child: const Text('POST'),
                ),
                ElevatedButton(
                  onPressed: postController.updatePost,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                  child: const Text('UPDATE'),
                ),
                ElevatedButton(
                  onPressed: postController.deletePost,
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                  child: const Text('DELETE'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

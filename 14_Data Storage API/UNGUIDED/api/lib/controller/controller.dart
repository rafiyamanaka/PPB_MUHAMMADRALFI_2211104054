// FILEPATH: d:/PPB_MUHAMMAD_RALFI_SE-06-2/14_Data Storage API/UNGUIDED/api/lib/controllers/post_controller.dart
import 'package:api/services/api_servise.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PostController extends GetxController {
  final ApiService _apiService = Get.find<ApiService>();
  RxList<dynamic> get posts => _apiService.posts;
  final RxBool isLoading = false.obs;

  Future<void> fetchPosts() async {
    _handleApiOperation(_apiService.fetchPosts(), 'Data berhasil diambil!');
  }

  Future<void> createPost() async {
    _handleApiOperation(_apiService.createPost(), 'Data berhasil ditambahkan');
  }

  Future<void> updatePost() async {
    _handleApiOperation(_apiService.updatePost(), 'Data berhasil diupdate');
  }

  Future<void> deletePost() async {
    _handleApiOperation(_apiService.deletePost(), 'Data berhasil dihapus');
  }

  Future<void> _handleApiOperation(Future<void> operation, String successMessage) async {
    isLoading.value = true;
    try {
      await operation;
      Get.snackbar('Success', successMessage, backgroundColor: Colors.green, colorText: Colors.white);
    } catch (e) {
      Get.snackbar('Error', 'Error: $e', backgroundColor: Colors.red, colorText: Colors.white);
    } finally {
      isLoading.value = false;
    }
  }
}

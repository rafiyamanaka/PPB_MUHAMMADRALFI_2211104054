import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/note_controller.dart';

class AddNotePage extends StatelessWidget {
  final NoteController noteController = Get.find();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add New Note'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: InputDecoration(labelText: 'Title'),
            ),
            SizedBox(height: 16),
            TextField(
              controller: descriptionController,
              decoration: InputDecoration(labelText: 'Description'),
              maxLines: 3,
            ),
            SizedBox(height: 16),
            ElevatedButton(
              child: Text('Save Note'),
              onPressed: () {
                noteController.addNote(
                  titleController.text,
                  descriptionController.text,
                );
                Get.back();
              },
            ),
          ],
        ),
      ),
    );
  }
}

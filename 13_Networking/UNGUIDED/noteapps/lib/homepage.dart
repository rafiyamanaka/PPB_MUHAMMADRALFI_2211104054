import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controller/note_controller.dart';
import 'addnote.dart';

class HomePages extends StatelessWidget {
  final NoteController noteController = Get.put(NoteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Notes App'),
      ),
      body: Obx(() => ListView.builder(
            itemCount: noteController.notes.length,
            itemBuilder: (context, index) {
              final note = noteController.notes[index];
              return ListTile(
                title: Text(note.title),
                subtitle: Text(note.description),
                trailing: IconButton(
                  icon: Icon(Icons.delete),
                  onPressed: () => noteController.deleteNote(index),
                ),
              );
            },
          )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Get.to(AddNotePage()),
      ),
    );
  }
}

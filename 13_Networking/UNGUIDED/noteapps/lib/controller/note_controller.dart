import 'package:get/get.dart';

class Note {
  String title;
  String description;

  Note({required this.title, required this.description});
}

class NoteController extends GetxController {
  var notes = <Note>[].obs;

  void addNote(String title, String description) {
    notes.add(Note(title: title, description: description));
  }

  void deleteNote(int index) {
    notes.removeAt(index);
  }
}

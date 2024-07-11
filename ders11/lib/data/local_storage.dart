import 'package:ders11/model/note_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalStorage {
  static String boxName = "notlar";

  var box = Hive.box<NoteModel>(boxName);
  Future<void> addNote(NoteModel note) async {
    await box.put(note.id, note);
  }

  Future<void> updateNote(NoteModel note) async {
    await box.put(note.id, note);
  }

  Future<void> deleteNote(NoteModel note) async {
    await note.delete();
  }

  List<NoteModel> fetchList() {
    return box.values.toList();
  }
}

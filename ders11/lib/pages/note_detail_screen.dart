import 'package:ders11/model/note_model.dart';
import 'package:flutter/material.dart';

class NoteDetailScreen extends StatefulWidget {
  const NoteDetailScreen({super.key, required this.note});
  final NoteModel note;

  @override
  State<NoteDetailScreen> createState() => _NoteDetailScreenState();
}

class _NoteDetailScreenState extends State<NoteDetailScreen> {
  late NoteModel note;

  @override
  void initState() {
    super.initState();
    note = widget.note;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Not Detay"),
      ),
      body: Column(
        children: [
          Text(note.id),
          Text(note.title),
          Text(note.description),
          Text(note.createAtDatetime.toString()),
          Text(note.status.toString()),
        ],
      ),
    );
  }
}

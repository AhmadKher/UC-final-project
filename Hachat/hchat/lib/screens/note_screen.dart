import 'package:flutter/material.dart';

import 'package:hchat/models/note.dart';

import '../models/note.dart';

class NoteScreen extends StatelessWidget {
  const NoteScreen({
    Key? key,
    required this.newNote,
  }) : super(key: key);

  final Note newNote;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(newNote.title),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'package:hchat/models/note.dart';
import 'package:hchat/screens/note_screen.dart';
import 'package:hchat/models/note.dart';

import '../screens/note_screen.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    Key? key,
    required this.newNote,
  }) : super(key: key);

  final Note newNote;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text(newNote.title),
        subtitle: Text(newNote.body),
      ),
    );
  }
}

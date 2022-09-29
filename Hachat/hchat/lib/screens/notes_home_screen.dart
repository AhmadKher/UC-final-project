import 'package:flutter/material.dart';
import 'package:hchat/models/note.dart';
import 'package:hchat/widgets/note_item.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hchat/models/note.dart';

import '../widgets/note_item.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final titleController = TextEditingController();

  final bodyController = TextEditingController();

  List<Note> notes = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Text(
          ' Add Your ATTACK Summary',
        ),
        actions: [
          IconButton(
            iconSize: 35,
            onPressed: () {
              notes.insert(
                0,
                Note(title: titleController.text, body: bodyController.text),
              );
              titleController.clear();
              bodyController.clear();

              setState(() {});
            },
            icon: Icon(Icons.add_box_outlined),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(18),
            child: TextField(
              controller: titleController,
              decoration: InputDecoration(
                hintText: 'Date',
                hintStyle: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(18),
            child: TextField(
              controller: bodyController,
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'summary',
                hintStyle: TextStyle(fontSize: 24),
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: notes.length,
              itemBuilder: (context, index) {
                return NoteItem(newNote: notes[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}

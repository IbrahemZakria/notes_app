// Created by: Ahmed Elshafey
import 'package:flutter/material.dart';
import 'package:notes_app/views/edit_notes_view.dart';
import 'package:notes_app/views/widgets/note_item.dart';

class NotesListview extends StatelessWidget {
  NotesListview({super.key});
  final List<Color> colors = [
    const Color.fromARGB(255, 41, 66, 73),
    const Color.fromARGB(255, 134, 195, 244),
    const Color.fromARGB(255, 93, 181, 96),
    const Color.fromARGB(255, 251, 237, 106),
    const Color.fromARGB(255, 162, 84, 176),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return NoteItem(
          color: colors[index],
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return EditNotesView();
                },
              ),
            );
          },
        );
      },
    );
  }
}

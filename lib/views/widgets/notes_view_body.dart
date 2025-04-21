import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/CustomAppBar.dart';
import 'package:notes_app/views/widgets/notes_listView.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Column(
        children: [
          Customappbar(
            icon: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            title: 'NOTES',
          ),
          Expanded(child: NotesListview()),
        ],
      ),
    );
  }
}

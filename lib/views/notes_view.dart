import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';
import 'package:notes_app/views/widgets/show_add_notes_sheet.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});
  static const String routeName = '/notes_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NotesViewBody(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return ShowAddNotesSheet();
            },
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}

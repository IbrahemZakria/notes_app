import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/form_note_sheet.dart';

class ShowAddNotesSheet extends StatelessWidget {
  const ShowAddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 24, left: 16, right: 16),
      height: MediaQuery.of(context).size.height * 0.55,
      child: Center(child: SingleChildScrollView(child: FormNoteSheet())),
    );
  }
}

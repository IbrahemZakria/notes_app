import 'package:flutter/material.dart';
import 'package:notes_app/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  NotesView({super.key});
  static const String routeName = '/notes_view';

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: NotesViewBody());
  }
}

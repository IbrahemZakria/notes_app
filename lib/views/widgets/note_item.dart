import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({
    required this.color,
    required this.notesmodel,
    super.key,
    this.onTap,
  });
  final NoteModel notesmodel;
  final Color color;

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: onTap,
      child: Container(
        margin: EdgeInsets.only(top: 16),
        height: MediaQuery.of(context).size.height * 0.25,
        decoration: BoxDecoration(
          color: Color(notesmodel.color),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ListTile(
              title: Text(
                notesmodel.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              subtitle: Text(
                notesmodel.content,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
              trailing: IconButton(
                onPressed: () {
                  notesmodel.delete();
                  BlocProvider.of<GetNotesCubit>(context).getNotes();
                },
                icon: Icon(Icons.delete, color: Colors.red, size: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    notesmodel.dateCreated,
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

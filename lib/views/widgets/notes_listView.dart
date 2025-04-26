import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/models/note_model.dart';
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
    const Color.fromARGB(255, 41, 66, 73),
    const Color.fromARGB(255, 134, 195, 244),
    const Color.fromARGB(255, 93, 181, 96),
    const Color.fromARGB(255, 251, 237, 106),
    const Color.fromARGB(255, 162, 84, 176),
    const Color.fromARGB(255, 41, 66, 73),
    const Color.fromARGB(255, 134, 195, 244),
    const Color.fromARGB(255, 93, 181, 96),
    const Color.fromARGB(255, 251, 237, 106),
    const Color.fromARGB(255, 162, 84, 176),
    const Color.fromARGB(255, 41, 66, 73),
    const Color.fromARGB(255, 134, 195, 244),
    const Color.fromARGB(255, 93, 181, 96),
    const Color.fromARGB(255, 251, 237, 106),
    const Color.fromARGB(255, 162, 84, 176),
    const Color.fromARGB(255, 41, 66, 73),
    const Color.fromARGB(255, 134, 195, 244),
    const Color.fromARGB(255, 93, 181, 96),
    const Color.fromARGB(255, 251, 237, 106),
    const Color.fromARGB(255, 162, 84, 176),
    const Color.fromARGB(255, 41, 66, 73),
    const Color.fromARGB(255, 134, 195, 244),
    const Color.fromARGB(255, 93, 181, 96),
    const Color.fromARGB(255, 251, 237, 106),
    const Color.fromARGB(255, 162, 84, 176),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GetNotesCubit, GetNotesState>(
      listener: (context, state) {
        if (state is AddNoteState) {
          GetNotesCubit()..getNotes();
        }
      },
      builder: (context, state) {
        List<NoteModel>? notes =
            state is GetNotesSuccess
                ? BlocProvider.of<GetNotesCubit>(context).notes
                : null;
        print(notes?.length);
        return ListView.builder(
          itemCount: notes?.length ?? 0,
          itemBuilder: (context, index) {
            return NoteItem(
              notesmodel: notes![index],

              color: colors[index],
              onTap: () {
                Navigator.pushNamed(
                  context,
                  EditNotesView.routeName,
                  arguments: notes[index],
                );
                //
              },
            );
          },
        );
      },
    );
  }
}

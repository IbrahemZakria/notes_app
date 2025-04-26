import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:notes_app/cubits/get_notes_cubit/get_notes_cubit.dart';
import 'package:notes_app/views/widgets/form_note_sheet.dart';

class ShowAddNotesSheet extends StatelessWidget {
  const ShowAddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: EdgeInsets.only(
          top: 24,
          left: 16,
          right: 16,
          bottom: MediaQuery.of(context).viewInsets.bottom + 24,
        ),
        child: Center(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              state is AddNoteSuccessState
                  ? BlocProvider.of<GetNotesCubit>(context).getNotes()
                  : null;
              // TODO: implement listener
            },
            builder: (context, state) {
              return AbsorbPointer(
                absorbing: state is AddNoteLoadingState ? true : false,
                child: FormNoteSheet(),
              );
            },
          ),
        ),
      ),
    );
  }
}

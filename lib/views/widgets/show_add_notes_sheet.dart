import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:notes_app/cubits/cubit/add_note_cubit.dart';
import 'package:notes_app/views/widgets/form_note_sheet.dart';

class ShowAddNotesSheet extends StatelessWidget {
  const ShowAddNotesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: Container(
        margin: EdgeInsets.only(top: 24, left: 16, right: 16),
        height: MediaQuery.of(context).size.height * 0.55,
        child: Center(
          child: BlocConsumer<AddNoteCubit, AddNoteState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return ModalProgressHUD(
                inAsyncCall: state is AddNoteLoadingState ? true : false,
                child: SingleChildScrollView(child: FormNoteSheet()),
              );
            },
          ),
        ),
      ),
    );
  }
}

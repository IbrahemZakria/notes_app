import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:notes_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitialState());

  void addnotes(NoteModel note) {
    try {
      emit(AddNoteLoadingState());
      var notesbox = Hive.box<NoteModel>('knotebox');
      notesbox.add(note);
      emit(AddNoteSuccessState());
    } catch (e) {
      emit(AddNoteErrorState(e.toString()));
    }
  }
}

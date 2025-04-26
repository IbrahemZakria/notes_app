// ignore_for_file: depend_on_referenced_packages

import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:notes_app/Constant.dart';
import 'package:notes_app/models/note_model.dart';

part 'get_notes_state.dart';

class GetNotesCubit extends Cubit<GetNotesState> {
  GetNotesCubit() : super(GetNotesInitial());
  List<NoteModel>? notes;
  Future<void> getNotes() async {
    var notesbox = await Hive.openBox<NoteModel>(knotebox);
    notes = notesbox.values.toList();

    emit(GetNotesSuccess(notes));
  }
}

part of 'add_note_cubit.dart';

@immutable
sealed class AddNoteState {}

final class AddNoteInitialState extends AddNoteState {}

final class AddNoteLoadingState extends AddNoteState {}

final class AddNoteSuccessState extends AddNoteState {}

final class AddNoteErrorState extends AddNoteState {
  final String error;
  AddNoteErrorState(this.error);
}

final class AddNoteEmptyState extends AddNoteState {
  final String message;
  AddNoteEmptyState(this.message);
}

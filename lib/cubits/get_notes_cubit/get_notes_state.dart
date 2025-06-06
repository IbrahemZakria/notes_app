part of 'get_notes_cubit.dart';

@immutable
sealed class GetNotesState {}

final class GetNotesInitial extends GetNotesState {}

final class GetNotesLoading extends GetNotesState {}

final class GetNotesSuccess extends GetNotesState {
  final List<NoteModel>? notes;
  GetNotesSuccess(this.notes);
}

final class GetNotesError extends GetNotesState {
  final String error;
  GetNotesError(this.error);
}

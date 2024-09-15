import 'package:note_app/models/note_model.dart';

abstract class NotesState {}

class NoteStateIntial extends NotesState {}

class NoteStateFailure extends NotesState {
  final String erroeMsg;

  NoteStateFailure({required this.erroeMsg});
}

class NoteStateSuccess extends NotesState {
  final List<NoteModel> note;

  NoteStateSuccess({required this.note});
}

class NoteStateLoading extends NotesState {}

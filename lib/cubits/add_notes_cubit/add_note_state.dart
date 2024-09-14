abstract class AddNoteState {}

class AddNotesIntial extends AddNoteState {}

class AddNotesFailure extends AddNoteState {
  final String errorMsg;

  AddNotesFailure({required this.errorMsg});
}

class AddNotesLoading extends AddNoteState {}

class AddNotesSuccess extends AddNoteState {}

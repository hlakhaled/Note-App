import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_notes_cubit/add_note_state.dart';
import 'package:note_app/models/note_model.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNotesIntial());
  void addNote(NoteModel note) {
    emit(AddNotesLoading());
    try {
      Box<NoteModel> notesBox = Hive.box<NoteModel>(kNotebox);

      notesBox.add(note);
      emit(AddNotesSuccess());
    } catch (e) {
      emit(AddNotesFailure(errorMsg: e.toString()));
    }
  }
}

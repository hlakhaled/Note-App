import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NoteStateIntial());

  fetchData() {
    try {
      Box<NoteModel> note = Hive.box<NoteModel>(kNotebox);
      emit(NoteStateSuccess(note: note.values.toList()));
    } catch (e) {
      emit(NoteStateFailure(erroeMsg: e.toString()));
    }
  }
}

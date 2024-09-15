import 'package:flutter/material.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/update_note_body.dart';

class UpdateNoteView extends StatelessWidget {
  const UpdateNoteView({super.key});

  static String id = "UpdateNoteView";
  @override
  Widget build(BuildContext context) {
    final NoteModel note =
        ModalRoute.of(context)!.settings.arguments as NoteModel;
    return  SafeArea(
      child: Scaffold(
        body: UpdateNoteBody(note:note),
      ),
    );
  }
}

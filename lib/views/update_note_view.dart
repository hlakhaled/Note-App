import 'package:flutter/material.dart';
import 'package:note_app/views/widgets/update_note_body.dart';

class UpdateNoteView extends StatelessWidget {
  const UpdateNoteView({super.key});
  static String id = "UpdateNoteView";
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: UpdateNoteBody(),
      ),
    );
  }
}

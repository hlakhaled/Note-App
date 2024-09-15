import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/views/widgets/add_notes_bottom_sheet.dart';
import 'package:note_app/views/widgets/note_view_body.dart';

class NoteAppView extends StatelessWidget {
  static String id = "NoteAppView";
  const NoteAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NotesCubit>(
      create: (context) => NotesCubit(),
      child: SafeArea(
          child: Scaffold(
        resizeToAvoidBottomInset: false,
        floatingActionButton: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          onPressed: () {
            showModalBottomSheet(
                isScrollControlled: true,
                context: context,
                builder: (context) => const AddNotesBottomSheet());
          },
          child: const Icon(
            Icons.add,
            color: Colors.white,
          ),
        ),
        body: const NoteViewBody(),
      )),
    );
  }
}

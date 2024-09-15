import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:note_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_notes_cubit/add_note_state.dart';

import 'package:note_app/views/widgets/add_note_form_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddNoteCubit>(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNotesFailure) {
            print("failed ${state.errorMsg}");
          } else if (state is AddNotesSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
              absorbing: state is AddNotesLoading ? true : false,
              child: const SingleChildScrollView(child: AddNoteFormField()));
        },
      ),
    );
  }
}

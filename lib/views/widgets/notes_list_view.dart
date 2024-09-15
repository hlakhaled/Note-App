import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/cubits/notes_cubit/notes_state.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_message_container.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h),
      child: BlocBuilder<NotesCubit, NotesState>(
        builder: (context, state) {
          List<NoteModel> note = context.read<NotesCubit>().notes;
          return ListView.builder(
              itemCount: note.length,
              padding: EdgeInsets.zero,
              itemBuilder: (context, index) => Padding(
                    padding: EdgeInsets.symmetric(vertical: 4.h),
                    child: CustomMessageContainer(
                      note: note[index],
                    ),
                  ));
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note_app/constants.dart';
import 'package:note_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:note_app/cubits/add_notes_cubit/add_note_state.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      builder: (context, state) {
        return ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
                backgroundColor: kprimaryColor,
                fixedSize: Size(MediaQuery.of(context).size.width, 55)),
            child: state is AddNotesLoading
                ? const Center(
                    child: CircularProgressIndicator(
                    color: Colors.black,
                  ))
                : const Text(
                    "Add",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 18),
                  ));
      },
    );
  }
}

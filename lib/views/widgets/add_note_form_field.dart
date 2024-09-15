import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:note_app/cubits/add_notes_cubit/add_note_cubit.dart';
import 'package:note_app/models/note_model.dart';
import 'package:note_app/views/widgets/custom_add_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';
//validation

class AddNoteFormField extends StatefulWidget {
  const AddNoteFormField({super.key});

  @override
  State<AddNoteFormField> createState() => _AddNoteFormFieldState();
}

class _AddNoteFormFieldState extends State<AddNoteFormField> {
  final GlobalKey<FormState> _key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: 16.h,
          left: 10.w,
          right: 10.w,
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Form(
        key: _key,
        autovalidateMode: autovalidateMode,
        child: Column(
          children: [
            CustomTextField(
              onSaved: (value) {
                title = value;
              },
              text: "title",
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextField(
              onSaved: (value) {
                subTitle = value;
              },
              text: "Content",
              maxline: 5,
            ),
            SizedBox(
              height: 40.h,
            ),
            CustomAddButton(
              onPressed: () {
                if (_key.currentState!.validate()) {
                  _key.currentState!.save();
                  NoteModel note = NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateFormat('dd-MM-yyyy').format(DateTime.now()),
                      color: Colors.blue.value);
                  context.read<AddNoteCubit>().addNote(note);
                } else {
                  autovalidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

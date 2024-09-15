import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/cubits/notes_cubit/notes_cubit.dart';
import 'package:note_app/models/note_model.dart';

import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'package:note_app/views/widgets/custom_text_field.dart';
import 'package:note_app/views/widgets/edit_list_color.dart';
import 'package:note_app/views/widgets/list_circle_item.dart';

class UpdateNoteBody extends StatefulWidget {
  const UpdateNoteBody({super.key, required this.note});
  final NoteModel note;
  @override
  State<UpdateNoteBody> createState() => _UpdateNoteBodyState();
}

class _UpdateNoteBodyState extends State<UpdateNoteBody> {
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(
            height: 18.h,
          ),
          CustomAppBar(
            icon: Icons.check,
            text: "Edit Note",
            onpressed: () {
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.title;
              widget.note.save();
              context.read<NotesCubit>().fetchData();
              Navigator.pop(context);
            },
          ),
          SizedBox(
            height: 36.h,
          ),
          CustomTextField(
            text: widget.note.title,
            onchange: (value) {
              title = value;
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomTextField(
            text: widget.note.subTitle,
            maxline: 5,
            onchange: (value) {
              subTitle = value;
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          EditListColor(
            note: widget.note,
          ),
        ],
      ),
    );
  }
}

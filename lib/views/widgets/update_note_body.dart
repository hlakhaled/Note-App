import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:note_app/views/widgets/custom_app_bar.dart';

import 'package:note_app/views/widgets/custom_text_field.dart';

class UpdateNoteBody extends StatelessWidget {
  const UpdateNoteBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        children: [
          SizedBox(
            height: 18.h,
          ),
          const CustomAppBar(icon: Icons.check, text: "Edit Note"),
          SizedBox(
            height: 36.h,
          ),
          const CustomTextField(text: "Title"),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextField(
            text: "Content",
            maxline: 5,
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_add_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class AddNotesBottomSheet extends StatelessWidget {
  const AddNotesBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.only(top: 36.h, left: 16.w, right: 16.w, bottom: 16),
      child: Column(
        children: [
          const CustomTextField(
            text: "title",
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextField(
            text: "Content",
            maxline: 5,
          ),
          SizedBox(
            height: 40.h,
          ),
          const CustomAddButton(),
        ],
      ),
    );
  }
}

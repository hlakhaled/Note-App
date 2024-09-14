import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:note_app/views/widgets/custom_add_button.dart';
import 'package:note_app/views/widgets/custom_text_field.dart';

class FormTextField extends StatefulWidget {
  const FormTextField({super.key});

  @override
  State<FormTextField> createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  final GlobalKey<FormState> _key = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Form(
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
              subTitle = title;
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
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}

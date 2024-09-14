import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final int maxline;
  final void Function(String?)? onSaved;
  const CustomTextField({
    super.key,
    required this.text,
    this.maxline = 1,
    required this.onSaved,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
      onSaved: onSaved,
      cursorColor: kprimaryColor,
      maxLines: maxline,
      decoration: InputDecoration(
        border: OutLineBorder(),
        hintText: text,
        enabledBorder: OutLineBorder(),
        focusedBorder: OutLineBorder(kprimaryColor),
      ),
    );
  }

  OutlineInputBorder OutLineBorder([Color? c]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: BorderSide(color: c ?? Colors.white));
  }
}

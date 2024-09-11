import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final int maxline;
  const CustomTextField({
    super.key,
    required this.text,
    this.maxline = 1,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
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

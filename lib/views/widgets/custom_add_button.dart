import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key, required this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            backgroundColor: kprimaryColor,
            fixedSize: Size(MediaQuery.of(context).size.width, 55)),
        child: const Text(
          "Add",
          style: TextStyle(
              fontWeight: FontWeight.bold, color: Colors.white, fontSize: 18),
        ));
  }
}

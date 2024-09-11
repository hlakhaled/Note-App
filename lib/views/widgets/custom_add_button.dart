import 'package:flutter/material.dart';
import 'package:note_app/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
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

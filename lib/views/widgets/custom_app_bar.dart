import 'package:flutter/material.dart';
import 'package:note_app/themes/text_style.dart';
import 'package:note_app/views/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.icon, required this.text,this.onpressed});
  final IconData icon;
 final void Function()? onpressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          text,
          style: TextStyles.appBar,
        ),
        CustomIcon(icon: Icon(icon),onpressed: onpressed,),
      ],
    );
  }
}

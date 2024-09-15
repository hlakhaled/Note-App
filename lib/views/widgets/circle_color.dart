import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';


class CircleColor extends StatelessWidget {
  const CircleColor({super.key, this.isClicked = false, required this.color});
  final bool isClicked;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 4.w),
      child: isClicked
          ? CircleAvatar(
              backgroundColor: Colors.white,
              radius: 30,
              child: CircleAvatar(
                backgroundColor: color,
                radius: 26.r,
              ),
            )
          : CircleAvatar(
              backgroundColor: color,
              radius: 30.r,
            ),
    );
  }
}

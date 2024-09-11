import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle get appBar => TextStyle(
        fontSize: 28.sp,
      );
  static TextStyle get title => TextStyle(
        color: Colors.black,
        fontSize: 26.sp,
      );
  static TextStyle get subtitle => TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 16.sp,
      );
  static TextStyle get date => TextStyle(
        color: Colors.black.withOpacity(0.5),
        fontSize: 16.sp,
      );
}

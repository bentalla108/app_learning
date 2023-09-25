import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget appImage(
    {String imageUrl = 'assets/icons/user.png',
    double width = 16,
    double height = 16}) {
  return Image.asset(
    imageUrl.isEmpty ? 'assets/icons/user.png' : imageUrl,
    height: height.h,
    width: width.w,
  );
}

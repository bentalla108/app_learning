import 'package:app_learning/common/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget text24normal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: TextStyle(
      color: color,
      fontSize: 24.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text16normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: TextStyle(
      color: color,
      fontSize: 16.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget text14normal(
    {String text = "", Color color = AppColors.primaryThreeElementText}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: TextStyle(
      color: color,
      fontSize: 14.sp,
      fontWeight: FontWeight.normal,
    ),
  );
}

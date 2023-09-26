import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/app_shadow.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget customButton(
    {BuildContext? context,
    required VoidCallback onTapFunction,
    Color textColor = Colors.white,
    Color color = AppColors.primaryElement,
    String text = '',
    double width = 325,
    double height = 50,
    Border? border}) {
  return GestureDetector(
    onTap: onTapFunction,
    child: Container(
      margin: const EdgeInsets.only(top: 15),
      width: width.w,
      height: height.h,
      decoration: appBoxShadow(color: color, border: border),
      child: Center(
        child: text16normal(
          text: text,
          color: textColor,
        ),
      ),
    ),
  );
}

/* Widget customTextField() {
  return Container(
    child: Column(
      children: [],
    ),
  );
}
 */
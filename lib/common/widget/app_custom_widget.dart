import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/app_shadow.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';

Widget customButton(
    {required VoidCallback onTapFunction,
    Color textColor = Colors.white,
    Color color = AppColors.primaryElement,
    String text = ''}) {
  return GestureDetector(
    onTap: onTapFunction,
    child: Container(
      margin: const EdgeInsets.only(top: 15),
      width: 325,
      height: 50,
      decoration: appBoxShadow(color: color),
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
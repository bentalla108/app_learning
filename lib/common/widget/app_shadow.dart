import 'package:app_learning/common/utils/colors.dart';
import 'package:flutter/material.dart';

BoxDecoration appBoxShadow(
    {Color color = AppColors.primaryElement,
    double radius = 15,
    double sR = 1,
    double bR = 2}) {
  return BoxDecoration(
    color: color,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey.withOpacity(0.1),
        spreadRadius: sR,
        blurRadius: bR,
        offset: const Offset(0, 1),
      ),
    ],
  );
}

BoxDecoration appBoxDecorationTextField({
  Color color = AppColors.primaryBackground,
  Color borderColor = AppColors.primaryFourElementText,
  double radius = 15,
}) {
  return BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(radius),
      border: Border.all(color: borderColor));
}

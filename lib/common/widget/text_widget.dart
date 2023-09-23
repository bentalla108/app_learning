import 'package:app_learning/common/utils/colors.dart';
import 'package:flutter/material.dart';

Widget test24normal({String text = "", Color color = AppColors.primaryText}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: TextStyle(
      color: color,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget test16normal(
    {String text = "", Color color = AppColors.primarySecondaryElementText}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: TextStyle(
      color: color,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}

import 'package:app_learning/common/widget/app_shadow.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';

Widget appOnBoardingPage(
    {required String title,
    required String subTitle,
    required String imageurl,
    required VoidCallback onTapFunction}) {
  return Column(
    children: [
      Image.asset(imageurl, fit: BoxFit.fitWidth),
      Container(
        margin: const EdgeInsets.only(top: 15),
        child: test24normal(
          text: title,
        ),
      ),
      Container(
        margin: const EdgeInsets.only(top: 15),
        padding: const EdgeInsets.only(right: 30, left: 30),
        child: test16normal(text: subTitle),
      ),
      _nextButton(onTapFunction: onTapFunction),
    ],
  );
}

Widget _nextButton({required VoidCallback onTapFunction}) {
  return GestureDetector(
    onTap: onTapFunction,
    child: Container(
      margin: const EdgeInsets.only(top: 100, left: 25, right: 25),
      width: 325,
      height: 50,
      decoration: appBoxShadow(),
      child: Center(
        child: test16normal(
          text: 'Next',
          color: Colors.white,
        ),
      ),
    ),
  );
}

import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';

Widget appOnBoardingPage({
  required String title,
  required String subTitle,
  required String imageurl,
}) {
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
      ElevatedButton(
        onPressed: () {},
        child: const Text('Next'),
      ),
    ],
  );
}

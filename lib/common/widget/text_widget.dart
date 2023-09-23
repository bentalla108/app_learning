import 'package:flutter/material.dart';

Widget test24normal({String text = ""}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: const TextStyle(
      color: Colors.blue,
      fontSize: 24,
      fontWeight: FontWeight.normal,
    ),
  );
}

Widget test16normal({String text = ""}) {
  return Text(
    textAlign: TextAlign.center,
    text,
    style: const TextStyle(
      color: Colors.blue,
      fontSize: 16,
      fontWeight: FontWeight.normal,
    ),
  );
}

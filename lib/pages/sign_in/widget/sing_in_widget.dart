import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget thirdPartyLogin() {
  return Container(
    margin: EdgeInsets.only(left: 80.w, right: 80.w, top: 40.h, bottom: 20.h),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _loginButton(iconUrl: "assets/icons/google.png", onTapFunction: () {}),
        _loginButton(iconUrl: "assets/icons/apple.png", onTapFunction: () {}),
        _loginButton(
            iconUrl: "assets/icons/facebook.png", onTapFunction: () {}),
      ],
    ),
  );
}

Widget _loginButton(
    {required String iconUrl, required VoidCallback onTapFunction}) {
  return GestureDetector(
      onDoubleTap: onTapFunction,
      // ignore: sized_box_for_whitespace
      child: Container(
        width: 40.w,
        height: 40.h,
        child: Image.asset(iconUrl),
      ));
}

import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/app_shadow.dart';
import 'package:app_learning/common/widget/image_widget.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

AppBar buildAppBar() {
  return AppBar(
    bottom: PreferredSize(
      preferredSize: const Size.fromHeight(1),
      child: Container(
        height: 1,
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 175, 166, 166)),
      ),
    ),
    centerTitle: true,
    title: text16normal(text: 'Log in', color: AppColors.primaryText),
  );
}

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

Widget appTextField(
    {String text = '', String hintText = '', String iconName = ""}) {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 25.w),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        text14normal(text: text),
        Container(
          width: 325.w,
          height: 50.h,
          decoration: appBoxDecorationTextField(),
          child: Row(
            children: [
              Container(
                margin: EdgeInsets.only(left: 17.w),
                child: appImage(
                  imageUrl: iconName,
                ),
              ),
              // ignore: sized_box_for_whitespace
              Container(
                width: 270.w,
                height: 50.h,
                child: TextField(
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(hintText: hintText),
                ),
              )
            ],
          ),
        ),
        /*  TextField(
          decoration: InputDecoration(hintText: hintText),
        ) */
      ],
    ),
  );
}

import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/app_bar.dart';
import 'package:app_learning/common/widget/app_textfield.dart';
import 'package:app_learning/common/widget/button_widget.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: 'Sign Up'),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: text14normal(
                        text: 'Enter yours details below and free sign up'),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  appTextField(
                      text: 'User name',
                      iconName: 'assets/icons/user.png',
                      hintText: 'Enter your name'),
                  appTextField(
                      text: 'Email',
                      iconName: 'assets/icons/user.png',
                      hintText: 'Enter your Email address'),
                  SizedBox(
                    height: 20.h,
                  ),
                  appTextField(
                      obsText: true,
                      text: 'Password',
                      iconName: 'assets/icons/lock.png',
                      hintText: 'Enter your Password'),
                  SizedBox(
                    height: 20.h,
                  ),
                  appTextField(
                      obsText: true,
                      text: 'Confirm Password',
                      iconName: 'assets/icons/lock.png',
                      hintText: 'Enter your Confirm Password'),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 10.h, left: 25.w, right: 25.w),
                    child: text14normal(
                      text:
                          'By Creating an account you have to agree with \nour therm & condition.',
                    ),
                  ),
                  SizedBox(
                    height: 50.w,
                  ),
                  Center(
                    child: customButton(
                        onTapFunction: () {},
                        text: 'Sign Up',
                        textColor: AppColors.primaryBackground),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

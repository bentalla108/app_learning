import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/app_custom_widget.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:app_learning/pages/sign_in/widget/sing_in_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                thirdPartyLogin(),
                Center(
                  child:
                      text14normal(text: 'Or use your email account to login'),
                ),
                SizedBox(
                  height: 50.h,
                ),
                appTextField(
                  text: 'Email',
                  iconName: 'assets/icons/user.png',
                ),
                SizedBox(
                  height: 20.h,
                ),
                appTextField(
                  text: 'Password',
                  iconName: 'assets/icons/lock.png',
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Forgot password'),
                ),
                Center(
                  child: customButton(
                      onTapFunction: () {},
                      text: 'Log In',
                      textColor: Colors.white),
                ),
                Center(
                  child: customButton(
                      color: Colors.white,
                      onTapFunction: () {},
                      text: 'Sign Up',
                      textColor: AppColors.primaryText),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

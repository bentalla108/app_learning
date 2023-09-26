import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/widget/app_bar.dart';
import 'package:app_learning/common/widget/app_textfield.dart';
import 'package:app_learning/common/widget/button_widget.dart';
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
          appBar: buildAppBar(title: 'Sign In'),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  thirdPartyLogin(),
                  Center(
                    child: text14normal(
                        text: 'Or use your email account to login'),
                  ),
                  SizedBox(
                    height: 50.h,
                  ),
                  appTextField(
                      text: 'Email',
                      iconName: 'assets/icons/user.png',
                      hintText: 'Enter your Email'),
                  SizedBox(
                    height: 20.h,
                  ),
                  appTextField(
                      obsText: true,
                      text: 'Password',
                      iconName: 'assets/icons/lock.png',
                      hintText: 'Enter your password'),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 20.h,
                      left: 25.w,
                    ),
                    child: textUnderline(
                      text: 'Forgot password',
                    ),
                  ),
                  SizedBox(
                    height: 100.w,
                  ),
                  Center(
                    child: customButton(
                        onTapFunction: () {},
                        text: 'LogIn',
                        textColor: AppColors.primaryBackground),
                  ),
                  Center(
                    child: customButton(
                        border:
                            Border.all(color: AppColors.primaryFourElementText),
                        color: Colors.white,
                        onTapFunction: () {
                          Navigator.of(context).pushNamed('/signUp');
                        },
                        text: 'Sign Up',
                        textColor: AppColors.primaryText),
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

import 'package:app_learning/common/utils/colors.dart';
import 'package:app_learning/common/utils/global_loader/global_loader.dart';
import 'package:app_learning/common/widget/app_bar.dart';
import 'package:app_learning/common/widget/app_textfield.dart';
import 'package:app_learning/common/widget/button_widget.dart';
import 'package:app_learning/common/widget/text_widget.dart';
import 'package:app_learning/pages/sign_up/notifier/register_notifier.dart';
import 'package:app_learning/pages/sign_up/sign_up_controlller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends ConsumerStatefulWidget {
  const SignUp({super.key});

  @override
  ConsumerState<SignUp> createState() => _SignUpState();
}

class _SignUpState extends ConsumerState<SignUp> {
  late SignUpController _controller;

  @override
  void initState() {
    _controller = SignUpController(ref: ref);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final registerProvider = ref.watch(registerNotifierProvider);
    final loader = ref.watch(appLoaderProvider);

    // ignore: avoid_unnecessary_containers
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Scaffold(
          appBar: buildAppBar(title: 'Sign Up'),
          body: Center(
            child: loader
                ? const CircularProgressIndicator(
                    backgroundColor: Colors.blue,
                    color: AppColors.primaryElement,
                  )
                : Center(
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Center(
                            child: text14normal(
                                text:
                                    'Enter yours details below and free sign up'),
                          ),
                          SizedBox(
                            height: 50.h,
                          ),
                          appTextField(
                              func: (value) {
                                ref
                                    .read(registerNotifierProvider.notifier)
                                    .onUserNamechange(value);
                              },
                              text: 'User name',
                              iconName: 'assets/icons/user.png',
                              hintText: 'Enter your name'),
                          appTextField(
                              func: (value) {
                                ref
                                    .read(registerNotifierProvider.notifier)
                                    .onUserEmailchange(value);
                              },
                              text: 'Email',
                              iconName: 'assets/icons/user.png',
                              hintText: 'Enter your Email address'),
                          SizedBox(
                            height: 20.h,
                          ),
                          appTextField(
                              func: (value) {
                                ref
                                    .read(registerNotifierProvider.notifier)
                                    .onUserPasswordchange(value);
                              },
                              obsText: true,
                              text: 'Password',
                              iconName: 'assets/icons/lock.png',
                              hintText: 'Enter your Password'),
                          SizedBox(
                            height: 20.h,
                          ),
                          appTextField(
                              func: (value) {
                                ref
                                    .read(registerNotifierProvider.notifier)
                                    .onUserRePasswordchange(value);
                              },
                              obsText: true,
                              text: 'Confirm Password',
                              iconName: 'assets/icons/lock.png',
                              hintText: 'Enter your Confirm Password'),
                          Padding(
                            padding: EdgeInsets.only(
                                top: 10.h, left: 25.w, right: 25.w),
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
                                context: context,
                                onTapFunction: () {
                                  _controller.handleSignUp();
                                },
                                text: 'Sign Up',
                                textColor: AppColors.primaryBackground),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
        ),
      ),
    );
  }
}

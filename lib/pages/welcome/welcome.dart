import 'package:app_learning/pages/sign_in/sign_in.dart';
import 'package:app_learning/pages/welcome/notifier/welcome_notifier.dart';
import 'package:app_learning/pages/welcome/welcome_text.dart';
import 'package:app_learning/pages/welcome/widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends ConsumerWidget {
  Welcome({super.key});
  final PageController _controller = PageController();
  final List<Map<String, String>> _pageInformation = pageInformation;

  void onTapFunction(int index, BuildContext context) {
    if (index < _pageInformation.length) {
      _controller.animateToPage(
        index + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }

    if (index == (_pageInformation.length - 1)) {
      Navigator.of(context).push(
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const SignIn(),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final indexPage = ref.watch(indexDotProvider);
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 30.h),
          child: Scaffold(
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView.builder(
                  onPageChanged: (value) {
                    ref.read(indexDotProvider.notifier).changeValue(value);
                  },
                  controller: _controller,
                  itemCount: _pageInformation.length,
                  itemBuilder: (context, index) {
                    return appOnBoardingPage(
                      onTapFunction: () {
                        onTapFunction(index, context);
                      },
                      imageurl: _pageInformation[index]['imageurl'].toString(),
                      title: _pageInformation[index]['title'].toString(),
                      subTitle: _pageInformation[index]['subTitle'].toString(),
                    );
                  },
                ),
                Positioned(
                  bottom: 100,
                  child: DotsIndicator(
                    mainAxisAlignment: MainAxisAlignment.center,
                    dotsCount: _pageInformation.length,
                    position: indexPage,
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5.w))),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

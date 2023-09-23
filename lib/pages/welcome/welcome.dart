import 'package:app_learning/pages/welcome/welcome_text.dart';
import 'package:app_learning/pages/welcome/widget.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Welcome extends StatelessWidget {
  Welcome({super.key});
  final PageController _controller = PageController();
  final List<Map<String, String>> _pageInformation = pageInformation;
  void onTapFunction(int index) {
    if (index < _pageInformation.length) {
      _controller.animateToPage(
        index + 1,
        duration: const Duration(milliseconds: 300),
        curve: Curves.linear,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Container(
          margin: const EdgeInsets.only(top: 30),
          child: Scaffold(
            body: Stack(
              alignment: Alignment.topCenter,
              children: [
                PageView.builder(
                  controller: _controller,
                  itemCount: _pageInformation.length,
                  itemBuilder: (context, index) {
                    return appOnBoardingPage(
                      onTapFunction: () {
                        onTapFunction(index);
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
                    decorator: DotsDecorator(
                        size: const Size.square(9.0),
                        activeSize: const Size(18.0, 8.0),
                        activeShape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5))),
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

import 'package:app_learning/pages/welcome/welcome_text.dart';
import 'package:app_learning/pages/welcome/widget.dart';
import 'package:flutter/material.dart';

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
    return Scaffold(
      body: Stack(
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
        ],
      ),
    );
  }
}

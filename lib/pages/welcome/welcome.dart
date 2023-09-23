import 'package:app_learning/pages/welcome/widget.dart';
import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            children: [
              appOnBoardingPage(
                imageurl: 'assets/images/reading.png',
                title: 'First see learning',
                subTitle: 'Forget about of paper all knowledge in one learning',
              )
            ],
          )
        ],
      ),
    );
  }
}

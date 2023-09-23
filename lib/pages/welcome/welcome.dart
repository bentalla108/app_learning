import 'package:flutter/material.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.cyan,
      body: Stack(
        children: [
          Positioned(
            left: 20,
            bottom: 200,
            child: Text('Widget One'),
          ),
          Positioned(
            left: 200,
            child: Text('Widget One'),
          ),
        ],
      ),
    );
  }
}

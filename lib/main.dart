import 'package:app_learning/pages/welcome/welcome.dart';
import 'package:flutter/material.dart';
import 'package:riverpod/riverpod.dart';

void main() {
  runApp(const MyApp());
}

final appcount = Provider<int>((ref) {
  return 1;
});

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Riverpod 2.',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Welcome(),
    );
  }
}

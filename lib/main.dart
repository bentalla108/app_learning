import 'package:app_learning/common/utils/app_style.dart';
import 'package:app_learning/firebase_options.dart';
import 'package:app_learning/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await ScreenUtil.ensureScreenSize();

  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(372, 812));
    return MaterialApp(
      title: 'Riverpod 2.',
      theme: AppTheme.appThemeData,
      initialRoute: '/',
      routes: router,
    );
  }
}

import 'package:app_learning/pages/sign_in/sign_in.dart';
import 'package:app_learning/pages/welcome/welcome.dart';

final router = {
  '/': (context) => Welcome(),
  '/signIn': (context) => const SignIn(),
};

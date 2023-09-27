import 'package:app_learning/common/utils/global_loader/global_loader.dart';
import 'package:app_learning/common/widget/popup_messenger.dart';
import 'package:app_learning/pages/sign_up/notifier/register_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignUpController {
  final WidgetRef ref;

  SignUpController({required this.ref});

  void handleSignUp() async {
    var state = ref.read(registerNotifierProvider);
    String name = state.userName;
    String password = state.password;
    String rePassword = state.rePassword;
    String email = state.email;

    final context = Navigator.of(ref.context);

    // Show the loading
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    if (state.userName.isEmpty || name.isEmpty) {
      toastInfo('Your name is empty');
      return;
    }

    if ((state.password != state.rePassword) || (password != rePassword)) {
      toastInfo('Your password did not match');
      return;
    }
    if ((state.password.isEmpty || state.rePassword.isEmpty) ||
        (password.isEmpty || rePassword.isEmpty)) {
      toastInfo('Your password is empty');
      return;
    }
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo('Your email is empty');
      return;
    }
    if (state.userName.length < 6 || name.length < 6) {
      toastInfo('Your name is too short');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      if (credential.user != null) {
        await credential.user?.sendEmailVerification();
        await credential.user?.updateDisplayName(name);

        //get server photo
        //get user photo

        toastInfo(
            'An email has been send to verify your account. Please open that email and confirm your identity');
        context.pop();
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        toastInfo('This password is too weak');
      } else if (e.code == 'email-already-in-use') {
        toastInfo('This email address has already been registered');
      } else if (e.code == 'user-not-found') {
        toastInfo('User not found');
      }
    } catch (e) {}

    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}

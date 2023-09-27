import 'package:app_learning/common/utils/global_loader/global_loader.dart';
import 'package:app_learning/common/widget/popup_messenger.dart';
import 'package:app_learning/pages/sign_in/notifier/sign_in_notifier.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInController {
  WidgetRef ref;

  SignInController(this.ref);

  void handleSignIn() async {
    var state = ref.read(signInNotifierProvider);
    String password = state.password;
    String email = state.email;

    final context = Navigator.of(ref.context);

    // Show the loading
    ref.read(appLoaderProvider.notifier).setLoaderValue(true);

    if (state.password.isEmpty || password.isEmpty) {
      toastInfo('Your password is empty');
      return;
    }
    if (state.email.isEmpty || email.isEmpty) {
      toastInfo('Your email is empty');
      return;
    }

    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);

      if (credential.user == null) {
        toastInfo('User  with this email not found');
      }

      if (!credential.user!.emailVerified) {
        toastInfo('You must to verify your adress email first !');
      }

      var user = credential.user;

      if (user != null) {
        String? displayName = user.displayName;
        String? email = user.email;
        String? id = user.uid;
        String? photoUrl = user.photoURL;
      }
    } on FirebaseAuthException catch (e) {
      if (e.code == 'wrong-password') {
        toastInfo('Wrong password');
      } else if (e.code == 'user-not-found') {
        toastInfo('User not found');
      }
    } catch (e) {
      toastInfo(e.toString());
    }

    ref.read(appLoaderProvider.notifier).setLoaderValue(false);
  }
}

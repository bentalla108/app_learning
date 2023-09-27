import 'package:app_learning/pages/sign_in/notifier/sigin_in.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignInNotifier extends StateNotifier<SignInState> {
  SignInNotifier() : super(SignInState());

  void onUserEmailchange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordchange(String password) {
    state = state.copyWith(password: password);
  }
}

final signInNotifierProvider =
    StateNotifierProvider<SignInNotifier, SignInState>(
        (ref) => SignInNotifier());

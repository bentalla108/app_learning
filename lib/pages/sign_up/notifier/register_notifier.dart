import 'package:app_learning/pages/sign_up/notifier/register_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'register_notifier.g.dart';

@riverpod
class RegisterNotifier extends _$RegisterNotifier {
  @override
  RegisterState build() {
    return RegisterState();
  }

  void onUserNamechange(String name) {
    state = state.copyWith(userName: name);
  }

  void onUserEmailchange(String email) {
    state = state.copyWith(email: email);
  }

  void onUserPasswordchange(String password) {
    state = state.copyWith(password: password);
  }

  void onUserRePasswordchange(String repassword) {
    state = state.copyWith(rePassword: repassword);
  }
}

import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignUpViewModel extends BaseViewModel {
  final _navigator = locator<NavigationService>();

  String? email;
  String? userName;
  String? password;
  String? confirmPassword;

  void navigateToSignInView() async {
    _navigator.navigateToSignInView();
  }

  void onEmailChanged(String value) {
    email = value;
  }

  void onUserNameChanged(String value) {
    userName = value;
  }

  void onPasswordChanged(String value) {
    password = value;
  }

  void onConfirmPasswordChanged(String value) {
    confirmPassword = value;
  }

  void signUp() {
    _navigator.navigateToSignInView();
  }
}

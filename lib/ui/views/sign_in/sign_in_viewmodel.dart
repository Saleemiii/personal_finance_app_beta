import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

import '../../../app/app.locator.dart';

class SignInViewModel extends BaseViewModel {
  final _navigator = locator<NavigationService>();

  String? email;
  String? password;

  void navigateToHomeView() async {
    _navigator.navigateToHomeView();
  }

  void onEmailChanged(String value) {
    email = value;
  }

  void onPasswordChanged(String value) {
    password = value;
  }

  void signIn() {
    _navigator.navigateToHomeView();
  }
}

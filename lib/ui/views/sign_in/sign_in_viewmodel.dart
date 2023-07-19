import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:personal_finance_app_beta/services/auth_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SignInViewModel extends BaseViewModel {
  final _authenticationService = locator<AuthenticationService>();
  final _navigationService = locator<NavigationService>();

  // Fields for managing the user input
  String _email = '';
  String _password = '';
  String? _validationMessage;

  // Getters for accessing the user input
  String get email => _email;

  String get password => _password;

  String? get validationMessage => _validationMessage;

  // Methods for updating the user input
  void onEmailChanged(String value) {
    _email = value;
    notifyListeners();
  }

  void onPasswordChanged(String value) {
    _password = value;
    notifyListeners();
  }

  // Method for handling the sign-in button press
  Future<void> signIn() async {
    setBusy(true);
    // Field validation logic
    if (_email.isEmpty) {
      // Notify listeners about the error
      _setValidationMessage('Please enter your email.');
      return;
    }

    if (_password.isEmpty) {
      // Notify listeners about the error
      _setValidationMessage('Please enter your password.');
      return;
    }

    // If all validation checks pass, proceed with the sign-in logic.
    // Add your sign-in logic here, like making API calls to authenticate the user.

    // Clear any previous validation messages (if any) if the sign-in is successful.
    _setValidationMessage(null);

    setBusy(true);
    await _authenticationService.signInWithEmailAndPassword(_email, _password);
    setBusy(false);
  }

  //set validation message
  void _setValidationMessage(String? message) {
    _validationMessage = message;
    rebuildUi();
  }

  void navigateToSignUp() {
    _navigationService.navigateToSignUpView();
  }
}


import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/services/auth_service.dart';
import 'package:personal_finance_app_beta/services/user_service.dart';
import 'package:stacked/stacked.dart';

import '../../../models/user/user.dart';

class SignUpViewModel extends BaseViewModel {
  final _authService = locator<AuthenticationService>();
  final _userService = locator<UserService>();

  // Fields for managing the user input
  String _username = '';
  String _email = '';
  String _password = '';
  String _confirmPassword = '';
  String? _validationMessage;

  // Getters for accessing the user input
  String get username => _username;

  String get email => _email;

  String get password => _password;

  String get confirmPassword => _confirmPassword;

  String? get validationMessage => _validationMessage;

  // Methods for updating the user input
  void onUserNameChanged(String value) {
    _username = value;
    notifyListeners();
  }

  void onEmailChanged(String value) {
    _email = value;
    notifyListeners();
  }

  void onPasswordChanged(String value) {
    _password = value;
    notifyListeners();
  }

  void onConfirmPasswordChanged(String value) {
    _confirmPassword = value;
    notifyListeners();
  }

  // Method for handling the sign-up button press
  Future<void> signUp() async {
    // Validation logic
    if (_username.isEmpty) {
      // Notify listeners about the error
      _setValidationMessage('Please enter a username.');
      return;
    }

    if (_email.isEmpty) {
      // Notify listeners about the error
      _setValidationMessage('Please enter an email address.');
      return;
    }

    if (_password.isEmpty) {
      // Notify listeners about the error
      _setValidationMessage('Please enter a password.');
      return;
    }

    if (_confirmPassword.isEmpty) {
      // Notify listeners about the error
      _setValidationMessage('Please confirm your password.');
      return;
    }

    if (_password != _confirmPassword) {
      // Notify listeners about the error
      _setValidationMessage('Passwords do not match.');
      return;
    }

    setBusy(true);
    await _authService.signUpWithEmailAndPassword(email, password);
    await _userService.createUser(User(email: email, name: username));
    _setValidationMessage(null);
    setBusy(false);
  }

  void _setValidationMessage(String? message) {
    _validationMessage = message;
    rebuildUi();
  }
}

import 'package:firebase_auth/firebase_auth.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:personal_finance_app_beta/app/app.snackbars.dart';
import 'package:stacked_services/stacked_services.dart';

import '../app/app.locator.dart';

class AuthenticationService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _navigationService = locator<NavigationService>();
  final _snackbarService = locator<SnackbarService>();

  User? get currentUser => _auth.currentUser;

  bool get userLoggedIn => _auth.currentUser != null;

  // Sign in with email and password
  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      _navigationService.clearStackAndShow(Routes.homeView);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      _snackbarService.showCustomSnackBar(
        message: e.message ?? 'Something went wrong.',
        variant: SnackbarType.error,
      );
      return null;
    }
  }

  // Sign up with email and password
  Future<UserCredential?> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      _navigationService.clearStackAndShow(Routes.homeView);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      _snackbarService.showCustomSnackBar(
        message: e.message ?? 'Something went wrong.',
        variant: SnackbarType.error,
      );
      return null;
    }
  }

  // Sign out the current user
  Future<void> signOut() async {
    await _auth.signOut();
    _navigationService.clearStackAndShow(Routes.signInView);
  }

  // Get the current user (if signed in)
  User? getCurrentUser() {
    return _auth.currentUser;
  }
}

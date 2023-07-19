import 'package:personal_finance_app_beta/services/auth_service.dart';
import 'package:personal_finance_app_beta/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

class StartupViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _authService = locator<AuthenticationService>();
  final _userService = locator<UserService>();

  // Place anything here that needs to happen before we get into the application
  Future runStartupLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    // This is where you can make decisions on where your app should navigate when
    // you have custom startup logic
    if (_authService.userLoggedIn) {
      await _userService.initializeUser();
      _navigationService.clearStackAndShow(Routes.homeView);
    } else {
      _navigationService.clearStackAndShow(Routes.signInView);
    }
  }
}

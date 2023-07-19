import 'dart:math';

import 'package:flutter/material.dart';
import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:personal_finance_app_beta/models/transaction/transaction.dart';
import 'package:personal_finance_app_beta/services/auth_service.dart';
import 'package:personal_finance_app_beta/services/user_service.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  final _dialogService = locator<DialogService>();
  final _authService = locator<AuthenticationService>();
  final _userService = locator<UserService>();

  List<String> options = [
    'Bills',
    'Investments',
    'Savings',
    'Loans',
    'Others',
  ];

  String get username => _userService.user?.name ?? 'N/A';

  List<Transaction> transactions = List.generate(
    15,
    (index) => Transaction(
      id: index.toString(),
      amount: Random().nextInt(100000).toDouble(),
      received: Random().nextBool(),
      transactionDate: DateTime.now(),
      title: 'Transaction',
      madeWith: 'Ahmed Bilal',
    ),
  );

// Place anything here that needs to happen before we get into the application
  void navigateToStartupView() async {
    _navigationService.navigateToStartupView();
  }

  void signOut() async {
    final res = await _dialogService.showDialog(
      title: 'Sign Out',
      description: 'Are you sure?',
      cancelTitle: 'Cancel',
      buttonTitle: 'Sign Out',
      buttonTitleColor: Colors.red,
      cancelTitleColor: Colors.black,
      barrierDismissible: false,
    );
    if (res == null || !res.confirmed) return;
    _authService.signOut();
  }

  void onPressedOptions(int index) {}
}

import 'dart:math';

import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:personal_finance_app_beta/models/transaction/transaction.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

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
}

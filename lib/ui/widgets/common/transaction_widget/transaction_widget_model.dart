import 'package:personal_finance_app_beta/app/app.locator.dart';
import 'package:personal_finance_app_beta/app/app.router.dart';
import 'package:personal_finance_app_beta/models/transaction/transaction.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class TransactionWidgetModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();
  void openTransactionDetails(Transaction transaction) {
    _navigationService.navigateToTransactionDetailsView(transaction:transaction );
  }
}

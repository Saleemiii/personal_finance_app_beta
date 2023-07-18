import 'package:personal_finance_app_beta/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:personal_finance_app_beta/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:personal_finance_app_beta/ui/views/home/home_view.dart';
import 'package:personal_finance_app_beta/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:personal_finance_app_beta/ui/views/sign_in/sign_in_view.dart';
import 'package:personal_finance_app_beta/ui/views/home/home_view.dart';
import 'package:personal_finance_app_beta/ui/views/sign_up/sign_up_view.dart';
import 'package:personal_finance_app_beta/ui/views/transaction_details/transaction_details_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SignInView),
    MaterialRoute(page: SignUpView),
    MaterialRoute(page: TransactionDetailsView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}

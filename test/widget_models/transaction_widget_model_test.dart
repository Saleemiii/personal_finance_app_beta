import 'package:flutter_test/flutter_test.dart';
import 'package:personal_finance_app_beta/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('TransactionWidgetModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}

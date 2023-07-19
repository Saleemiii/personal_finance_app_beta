import 'package:flutter/material.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app.locator.dart';

enum SnackbarType {
  info,
  success,
  error,
}

void setupSnackbarUI() {
  final dialogService = locator<SnackbarService>();

  dialogService.registerCustomSnackbarConfig(
      variant: SnackbarType.info,
      config: SnackbarConfig(
        backgroundColor: Colors.blue,
        textColor: Colors.white,
        borderRadius: 8,
        margin: const EdgeInsets.all(16),
      ));

  dialogService.registerCustomSnackbarConfig(
      variant: SnackbarType.success,
      config: SnackbarConfig(
        backgroundColor: Colors.green,
        textColor: Colors.white,
        borderRadius: 8,
        margin: const EdgeInsets.all(16),
      ));

  dialogService.registerCustomSnackbarConfig(
      variant: SnackbarType.error,
      config: SnackbarConfig(
        backgroundColor: Colors.red,
        textColor: Colors.white,
        borderRadius: 8,
        margin: const EdgeInsets.all(16),
      ));
}

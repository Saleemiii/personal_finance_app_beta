import 'package:finance_app/app/ui/pages/detail/controller/detail_provider.dart';
import 'package:finance_app/app/utils/app_colors_theme.dart';
import 'package:finance_app/app/utils/app_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (_, ref, ___) {
      final controller = ref.watch(detailProvider);
      return Scaffold(
        appBar: AppBar(
          title: Text(
            controller.currentExpense.detail ?? AppConstants.empty,
            style: GoogleFonts.ubuntu(
              color: AppColorsTheme.kBlue,
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 12,
            ),
          ),
        ),
      );
    });
  }
}

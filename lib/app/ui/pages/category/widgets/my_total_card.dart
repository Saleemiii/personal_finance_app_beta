import 'package:finance_app/app/utils/app_colors_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

class MyTotalCard extends StatelessWidget {
  final double amount;
  final String title;
  const MyTotalCard({super.key, required this.amount,required this.title});

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MediaQuery.of(context).size.height / 8 - 16,
      left: 16.0,
      child: MaterialButton(
        elevation: 4,
        onPressed: () {},
        color: AppColorsTheme.white,
        height: 100,
        minWidth: MediaQuery.of(context).size.width - 32.0,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30.0),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: GoogleFonts.ubuntu(
                color: AppColorsTheme.kBlue,
                fontSize: 24.0,
                letterSpacing: 12,
              ),
            ),
            Text(
              'Total',
              style: GoogleFonts.ubuntu(
                color: AppColorsTheme.kBlue,
                // fontSize: 24.0,

                letterSpacing: 8,
              ),
            ),
            RichText(
              text: TextSpan(
                text: NumberFormat.currency(name: 'Rs ').format(amount),
                style: GoogleFonts.ubuntu(
                  color: AppColorsTheme.kBlue,
                  fontSize: 32.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
import 'package:enum_to_string/enum_to_string.dart';
import 'package:finance_app/app/ui/pages/category/controller/category_provider.dart';
import 'package:finance_app/app/ui/pages/category/widgets/my_total_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_meedu/ui.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../utils/app_colors_theme.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (_, ref, __) {
        final controller =
            ref.watch(categoryProvider.select((p0) => p0.expensesToDisplay));
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: BackButton(color: AppColorsTheme.kRed),
            title: Text(
              EnumToString.convertToString(
                controller.currentExpenseType,
                camelCase: true,
              ),
              style: GoogleFonts.ubuntu(
                color: AppColorsTheme.kRed,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(20),
                  child: MyTotalCard(
                    amount: controller.totalAmount,
                    title: EnumToString.convertToString(
                      controller.currentExpenseType,
                      camelCase: true,
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 44.0,
                    ),
                    child: ListView(
                      children: controller.expensesToDisplay,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

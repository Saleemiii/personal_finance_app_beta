import 'package:auto_size_text/auto_size_text.dart';
import 'package:enum_to_string/enum_to_string.dart';
import 'package:finance_app/app/domain/models/expense.dart';
import 'package:finance_app/app/ui/global_widgets/show_up.dart';
import 'package:finance_app/app/ui/pages/home/controller/home_provider.dart';
import 'package:finance_app/app/utils/app_colors_theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCategories extends StatelessWidget {
  const MyCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: _CategoryItem(
                  category: ExpenseType.investment,
                  showUpDelay: 300,
                ),
              ),
              Expanded(
                child: _CategoryItem(
                  category: ExpenseType.utility,
                  showUpDelay: 500,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: Row(
            children: [
              Expanded(
                child: _CategoryItem(
                  category: ExpenseType.loan,
                  showUpDelay: 800,
                ),
              ),
              Expanded(
                child: _CategoryItem(
                  category: ExpenseType.others,
                  showUpDelay: 1100,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _CategoryItem extends StatelessWidget {
  const _CategoryItem({
    Key? key,
    required this.category,
    required this.showUpDelay,
  }) : super(key: key);

  final ExpenseType category;
  final int showUpDelay;

  @override
  Widget build(BuildContext context) {
    return ShowUp(
      delay: showUpDelay,
      child: CupertinoButton(
        padding: EdgeInsets.zero,
        onPressed: ()=>homeProvider.read.openCategoryExpenses(category),
        child: Container(
          alignment: Alignment.bottomLeft,
          margin: EdgeInsets.all(10),
          padding: EdgeInsets.all(10),
          height: double.maxFinite,
          width: double.maxFinite,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColorsTheme.kRed,
            border: Border.all(
              color: AppColorsTheme.kRed.shade300,
            ),
          ),
          child: AutoSizeText(
            EnumToString.convertToString(category, camelCase: true),
            maxLines: 1,
            style: GoogleFonts.ubuntu(
              color: AppColorsTheme.white,
              fontWeight: FontWeight.bold,
              fontSize: 34,
            ),
          ),
        ),
      ),
    );
  }
}

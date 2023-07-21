import 'package:finance_app/app/domain/models/expense.dart';
import 'package:finance_app/app/ui/pages/home/controller/home_provider.dart';
import 'package:finance_app/app/utils/app_colors_theme.dart';
import 'package:finance_app/app/utils/app_constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyDismissible extends StatelessWidget {
  final Expense expense;

  const MyDismissible({
    Key? key,
    required this.expense,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: UniqueKey(),
      background: Container(
        padding: const EdgeInsets.only(right: 8.0),
        color: AppColorsTheme.red,
        alignment: Alignment.centerRight,
        child: Icon(
          Icons.delete_outline_outlined,
          color: AppColorsTheme.white,
        ),
      ),
      direction: DismissDirection.endToStart,
      onDismissed: (DismissDirection direction) {
        homeProvider.read.removeExpense(expense);
      },
      confirmDismiss: (DismissDirection direction) async {
        return await showDialog(
          context: context,
          builder: (context) {
            return defaultTargetPlatform == TargetPlatform.iOS
                ? CupertinoAlertDialog(
                    title: const Text("Confirm"),
                    content: const Text(
                        "Are you sure you wish to delete this expense?"),
                    actions: <Widget>[
                      MaterialButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text("Delete")),
                      MaterialButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: Text(
                          "Cancel",
                          style: TextStyle(
                            color: AppColorsTheme.red,
                          ),
                        ),
                      ),
                    ],
                  )
                : AlertDialog(
                    title: const Text("Confirm"),
                    content: const Text(
                        "Are you sure you wish to delete this expense?"),
                    actions: <Widget>[
                      MaterialButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: const Text("Delete")),
                      MaterialButton(
                        onPressed: () => Navigator.of(context).pop(false),
                        child: const Text("Cancel"),
                      ),
                    ],
                  );
          },
        );
      },
      child: MaterialButton(
        onPressed: () {},
        padding: EdgeInsets.zero,
        child: ListTile(
          title: Text(
            DateFormat().format(expense.date),
            overflow: TextOverflow.ellipsis,
          ),
          trailing: Text(
            NumberFormat.currency(name: 'Rs ').format(expense.price),
            style: TextStyle(
              color: expense.direction == ExpenseDirection.sent
                  ? Colors.red
                  : Colors.green,
            ),
          ),
          // Text('${expense.price.toStringAsFixed(2)} Bs.'),
          subtitle: Text(
            expense.detail ?? AppConstants.empty,
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ),
    );
  }
}

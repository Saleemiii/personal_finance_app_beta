import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_finance_app_beta/models/transaction/transaction.dart';
import 'package:stacked/stacked.dart';

import 'transaction_widget_model.dart';

class TransactionWidget extends StackedView<TransactionWidgetModel> {
  const TransactionWidget({
    super.key,
    required this.transaction,
  });

  final Transaction transaction;

  @override
  Widget builder(
    BuildContext context,
    TransactionWidgetModel viewModel,
    Widget? child,
  ) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: ()=>viewModel.openTransactionDetails(transaction),
      child: ListTile(
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: transaction.received
                ? Colors.green.withOpacity(0.3)
                : Colors.red.withOpacity(0.3),
          ),
          child: Icon(
            transaction.received ? Icons.arrow_downward : Icons.arrow_upward,
            color: transaction.received ? Colors.green : Colors.red,
          ),
        ),
        title: Text(
          transaction.title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
        subtitle: Text(
          '${transaction.received ? 'transaction.received at' : 'Withdrawn at'} ${DateFormat('MMM dd, yyyy').format(transaction.transactionDate)}',
          // ignore: prefer_const_constructors
          style: TextStyle(
            color: Colors.grey,
            fontSize: 14,
          ),
        ),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Hero(
              tag: 'amount${transaction.id}',
              child: Material(
                color: Colors.transparent,
                child: Text(
                  "${transaction.received ? '+' : '-'}Rs. ${transaction.amount}",
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: transaction.received ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.arrow_forward_ios,
              color: Colors.grey,
            ),
          ],
        ),
      ),
    );
  }

  @override
  TransactionWidgetModel viewModelBuilder(
    BuildContext context,
  ) =>
      TransactionWidgetModel();
}

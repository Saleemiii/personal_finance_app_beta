import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_finance_app_beta/models/transaction/transaction.dart';
import 'package:personal_finance_app_beta/ui/common/ui_helpers.dart';
import 'package:stacked/stacked.dart';

import 'transaction_details_viewmodel.dart';

class TransactionDetailsView extends StackedView<TransactionDetailsViewModel> {
  const TransactionDetailsView({Key? key, required this.transaction})
      : super(key: key);

  final Transaction transaction;

  @override
  Widget builder(
    BuildContext context,
    TransactionDetailsViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Transaction Details'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Hero(
            tag: 'box',
            child: Material(
              color: Colors.transparent,
              child: Container(
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(20),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(colors: [
                      transaction.received ? Colors.green : Colors.red,
                      transaction.received
                          ? Colors.green.withOpacity(0.4)
                          : Colors.red.withOpacity(0.4)
                    ])),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'An amount of',
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    ),
                    Material(
                      color: Colors.transparent,
                      child: Text(
                        'Rs. ${transaction.amount}',
                        style: const TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          transaction.received ? 'received from ' : 'sent to ',
                          style: const TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        Text(
                          transaction.madeWith,
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const Text(
                          ' on ',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          '${DateFormat('MMM dd, yyyy').format(transaction.transactionDate)} ',
                          style: const TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Transaction Title:',
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          verticalSpace(5),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              transaction.title,
              textAlign: TextAlign.start,
            ),
          )
        ],
      ),
    );
  }

  @override
  TransactionDetailsViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      TransactionDetailsViewModel();
}

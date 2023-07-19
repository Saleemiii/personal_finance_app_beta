import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:personal_finance_app_beta/ui/views/home/home_viewmodel.dart';
import 'package:stacked/stacked.dart';

class OptionsGrid extends ViewModelWidget<HomeViewModel> {
  const OptionsGrid({super.key});

  @override
  Widget build(BuildContext context, HomeViewModel viewModel) {
    return GridView.count(
      scrollDirection: Axis.vertical,
      crossAxisCount: 2,
      children: [
        for (int index = 0; index < viewModel.options.length; index++)
          CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () => viewModel.onPressedOptions(index),
            child: Container(
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(0, 1),
                  ),
                ],
              ),
              child: Center(
                child: Text(
                  viewModel.options[index],
                  style: const TextStyle(
                    color: Colors.blue,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}

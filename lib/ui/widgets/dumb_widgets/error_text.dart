import 'package:flutter/material.dart';

class ErrorText extends StatelessWidget {
  final String errorMessage;

  const ErrorText({super.key, required this.errorMessage});

  @override
  Widget build(BuildContext context) {
    return Text(
      errorMessage,
      style: const TextStyle(
        color: Colors.red,
      ),
    );
  }
}

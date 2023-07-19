import 'package:flutter/material.dart';

class ErrorSnackbar extends StatelessWidget {
  final String message;

  const ErrorSnackbar({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.red, width: 2.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class SuccessSnackbar extends StatelessWidget {
  final String message;

  const SuccessSnackbar({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.green, width: 2.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.green,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class InfoSnackbar extends StatelessWidget {
  final String message;

  const InfoSnackbar({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        border: Border.all(color: Colors.grey, width: 2.0),
      ),
      padding: const EdgeInsets.all(16.0),
      child: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    Key? key,
    required this.hintText,
    required this.onChanged,
    this.obsecureText = false,
    this.inputType = TextInputType.text,
  }) : super(key: key);

  final String hintText;
  final Function(String) onChanged;
  final bool obsecureText;
  final TextInputType inputType;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.all(10),
        filled: true,
        hintText: hintText,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      autocorrect: false,
      obscureText: false,
      onChanged: onChanged,
    );
  }
}

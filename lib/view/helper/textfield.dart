import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hintText;
  final String labelText;

  const MyTextField({
    Key? key,
    required this.hintText,
    required this.labelText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Color(0xff89CCA4),
          hintText: hintText,
          labelText: labelText,
        ),
      ),
    );
  }
}

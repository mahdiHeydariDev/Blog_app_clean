import 'package:flutter/material.dart';

class AuthTextFieldWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hint;
  final IconData icon;
  final bool isPassword;
  const AuthTextFieldWidget({
    super.key,
    required this.controller,
    required this.hint,
    required this.icon,
    this.isPassword = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPassword,
      decoration: InputDecoration(
        hintText: hint,
        prefixIcon: Icon(
          icon,
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "$hint is required.";
        }
        return null;
      },
    );
  }
}

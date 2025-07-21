import 'package:flutter/material.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final bool obscureText;
  final VoidCallback? onTap;
  final FormFieldValidator<String>? validator;
  final TextInputType? keyboardType;
  final Widget? surffixIcon;

  const CustomInputField({
    this.controller,
    required this.hint,
    this.obscureText = false,
    this.onTap,
    this.keyboardType,
    this.surffixIcon,
    this.validator,

    super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      onTap: onTap,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal:16, vertical: 12),
        suffix: surffixIcon,
      )
      
    );
  }
}

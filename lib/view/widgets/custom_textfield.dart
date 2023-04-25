import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLines = 1,
    required this.controller,
  });
  final String hint;
  final int maxLines;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required";
        }
        return null;
      },
      maxLines: maxLines,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: const TextStyle(
          fontSize: 16,
          color: AppColors.kPrimaryColor,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(),
        ),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(color: AppColors.kPrimaryColor),
      ),
      cursorColor: AppColors.kPrimaryColor,
      keyboardType: TextInputType.text,
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderSide: BorderSide(
        color: color ?? Colors.white,
        width: 1,
      ),
      borderRadius: BorderRadius.circular(16),
    );
  }
}

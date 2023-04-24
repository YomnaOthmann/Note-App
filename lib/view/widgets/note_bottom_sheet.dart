import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: const [CustomTextField()],
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
  });
  //final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Title",
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

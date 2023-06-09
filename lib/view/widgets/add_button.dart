import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton({
    required this.pressed,
    super.key,
  });
  final VoidCallback pressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: pressed,
      style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.kPrimaryColor,
          elevation: 0.0,
          minimumSize: const Size(double.maxFinite, 55),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          )),
      child: const Text(
        "Add",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.black,
        ),
      ),
    );
  }
}

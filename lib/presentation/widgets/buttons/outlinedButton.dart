import 'package:flutter/material.dart';
import 'package:quickr/core/theme/app_colors.dart';

class OutlinedButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;

  const OutlinedButtonWidget({
    super.key,
    required this.onPressed,
    required this.buttonLabel,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        textStyle: TextStyle(
          color: AppColors.textPrimaryLight,
          fontWeight: FontWeight.w600,
          fontSize: 16,
        ),
        side: BorderSide(color: AppColors.accent),
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(buttonLabel),
      ),
    );
  }
}

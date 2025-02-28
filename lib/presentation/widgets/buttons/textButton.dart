import 'package:flutter/material.dart';

class TextButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;
  const TextButtonWidget({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(overlayColor: Colors.transparent),
      child: Text(buttonLabel),
    );
  }
}

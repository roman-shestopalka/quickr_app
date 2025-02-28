import 'package:flutter/material.dart';

class FilledButtonWidget extends StatelessWidget {
  final String buttonLabel;
  final VoidCallback onPressed;
  final Color buttonColors;

  const FilledButtonWidget({
    super.key,
    required this.buttonLabel,
    required this.onPressed,
    required this.buttonColors,
  });

  @override
  Widget build(BuildContext context) {
    return FilledButton(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        backgroundColor: buttonColors,
        textStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
      ),
      child: Padding(
        padding: const EdgeInsets.all(14.0),
        child: Text(buttonLabel),
      ),
    );
  }
}

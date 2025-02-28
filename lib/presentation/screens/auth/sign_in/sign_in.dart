import 'package:flutter/material.dart';
import 'package:quickr/core/theme/app_colors.dart';
import 'package:quickr/presentation/screens/home/home.dart';
import 'package:quickr/presentation/widgets/buttons/filledButton.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(context),
      body: _buildBody(context),
      backgroundColor: AppColors.accent,
    );
  }

  AppBar _buildAppBar(context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          right: 20,
          bottom: 60,
          left: 20,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildText(),
            Spacer(),
            _buildTextField(),
            SizedBox(height: 10),
            _buildTextField(),
            Spacer(),
            _buildButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildText() {
    final text = "Sign In";

    return Row(
      children: [
        Text(
          text,
          style: TextStyle(
            color: AppColors.backgroundLight,
            fontSize: 42,
            fontWeight: FontWeight.w900,
          ),
        ),
      ],
    );
  }

  Widget _buildTextField() {
    return SizedBox(
      child: TextField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none,
          ),
          fillColor: const Color(0x8BF8F9FD),
          filled: true,
        ),
        showCursor: false,
      ),
    );
  }

  Widget _buildButton(context) {
    final filledButtonLabel = "Continue";

    return FilledButtonWidget(
      buttonLabel: filledButtonLabel,
      onPressed: () => _onPressedFilledButton(context),
      buttonColors: const Color(0x8BF8F9FD),
    );
  }

  void _onPressedFilledButton(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}

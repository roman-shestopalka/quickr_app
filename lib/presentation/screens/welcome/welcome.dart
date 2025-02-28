import 'package:flutter/material.dart';
import 'package:quickr/core/assets/app_font_style.dart';
import 'package:quickr/core/assets/app_images.dart';
import 'package:quickr/core/theme/app_colors.dart';
import 'package:quickr/presentation/screens/auth/sign_in/sign_in.dart';
import 'package:quickr/presentation/screens/auth/sign_up/sign_up.dart';
import 'package:quickr/presentation/screens/home/home.dart';
import 'package:quickr/presentation/widgets/buttons/filledButton.dart';
import 'package:quickr/presentation/widgets/buttons/outlinedButton.dart';
import 'package:quickr/presentation/widgets/buttons/textButton.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _buildBody(context));
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          right: 20,
          bottom: 60,
          left: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            _buildLogoWithWelcomeText(),
            Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                _buildFilledButtonWidget(context),
                SizedBox(height: 8),
                _buildOutlinedButtonWidget(context),
                SizedBox(height: 10),
                _buildText(),
                _buildTextButtonWidget(context),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLogoWithWelcomeText() {
    const label = "Welcome to Quickr!";

    return Expanded(
      child: Column(
        children: [
          Image.asset(AppImages.appLogo, scale: 7),
          SizedBox(height: 20),
          Text(label, style: AppTextStyle.headline),
        ],
      ),
    );
  }

  Widget _buildFilledButtonWidget(context) {
    const signUp = "Sign Up";

    return FilledButtonWidget(
      buttonLabel: signUp,
      onPressed: () => _onPressedSignUpButton(context),
      buttonColors: AppColors.accent,
    );
  }

  Widget _buildOutlinedButtonWidget(context) {
    const signIn = "Sing In";

    return OutlinedButtonWidget(
      buttonLabel: signIn,
      onPressed: () => _onPressedSignInButton(context),
    );
  }

  Widget _buildText() {
    final label = "OR";

    return Text(
      label,
      textAlign: TextAlign.center,
      style: TextStyle(color: AppColors.textSecondaryDark, fontSize: 12),
    );
  }

  Widget _buildTextButtonWidget(context) {
    const skip = "Continue as guest";

    return TextButtonWidget(
      buttonLabel: skip,
      onPressed: () => _onPressedSkipButton(context),
    );
  }

  //Button action handlers

  void _onPressedSignUpButton(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUp()));
  }

  void _onPressedSignInButton(context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn()));
  }

  void _onPressedSkipButton(context) {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => HomePage()),
    );
  }
}

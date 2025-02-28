import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickr/core/assets/app_images.dart';
import 'package:quickr/presentation/screens/home/home.dart';
import 'package:quickr/presentation/screens/splash/cubit/splash_cubit.dart';
import 'package:quickr/presentation/screens/splash/cubit/splash_state.dart';
import 'package:quickr/presentation/screens/welcome/welcome.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit, SplashState>(
      listener: (context, state) {
        if (state is UnAuthenticated) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => WelcomeScreen()),
          );
        } else if (state is AsGuest) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomePage()),
          );
        }
      },
      child: Scaffold(body: _buildBody()),
    );
  }
}

Widget _buildBody() {
  return Center(child: Image.asset(AppImages.appLogo, scale: 3));
}

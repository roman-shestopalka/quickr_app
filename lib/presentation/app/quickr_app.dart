import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickr/core/theme/app_theme.dart';
import 'package:quickr/presentation/screens/splash/cubit/splash_state.dart';
import 'package:quickr/presentation/screens/splash/pages/splash.dart';

class QuickrApp extends StatelessWidget {
  const QuickrApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        title: 'Quickr',
        theme: AppTheme.lightTheme,
        home: SplashScreen(),
      ),
    );
  }
}

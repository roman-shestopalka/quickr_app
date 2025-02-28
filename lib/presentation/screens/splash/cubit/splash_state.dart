import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:quickr/presentation/screens/splash/cubit/splash_cubit.dart';

class SplashCubit extends Cubit<SplashState> {
  SplashCubit() : super(DisplaySplash());

  void appStarted() async {
    await Future.delayed(Duration(seconds: 2));
    emit(UnAuthenticated());
  }
}

import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';
import 'my_bloc_observer.dart';
import 'presentation/app_widget.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  //Inicializo el watcher de los bloc
  BlocOverrides.runZoned(
    () {},
    blocObserver: MyBlocObserver(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Eventos',
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        curve: Curves.decelerate,
        splash: 'assets/img/splash.png',
        nextScreen: AppWidget(),
        splashTransition: SplashTransition.fadeTransition,
        splashIconSize: 300,
        duration: 100,
      ),
    );
  }
}

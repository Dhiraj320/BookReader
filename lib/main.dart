import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:bookreader/screens/signin_screen.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,

        // from package we create splash screen
        home: AnimatedSplashScreen(
          splash: 'assets/booksplash.png',
          duration: 1500,
          nextScreen: SignInScreen(),
          splashTransition: SplashTransition.scaleTransition,
          backgroundColor: Colors.white,
        ));
  }
}

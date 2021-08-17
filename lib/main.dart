import 'package:flutter/material.dart';
import 'package:shamo_apps/pages/home/main_page.dart';
import 'package:shamo_apps/pages/signin_page.dart';
import 'package:shamo_apps/pages/signup_page.dart';
import 'package:shamo_apps/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/sign-in': (context) => SignInPage(),
        '/sign-up': (context) => SignUpPage(),
        '/home': (context) => MainPage(),
      },
    );
  }
}

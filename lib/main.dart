import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamo_apps/pages/cart_page.dart';
import 'package:shamo_apps/pages/checkout_page.dart';
import 'package:shamo_apps/pages/detail_chat.dart';
import 'package:shamo_apps/pages/edit_profile.dart';
import 'package:shamo_apps/pages/home/main_page.dart';
import 'package:shamo_apps/pages/product_page.dart';
import 'package:shamo_apps/pages/signin_page.dart';
import 'package:shamo_apps/pages/signup_page.dart';
import 'package:shamo_apps/pages/splash_page.dart';
import 'package:shamo_apps/pages/success_page.dart';
import 'package:shamo_apps/providers/auth_provider.dart';
import 'package:shamo_apps/providers/product_provider.dart';
import 'package:shamo_apps/services/product_service.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ProductService().getProducts().then((value) => print("value: $value"));

    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          '/cart-page': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/success-page': (context) => SuccessPage(),
        },
      ),
    );
  }
}

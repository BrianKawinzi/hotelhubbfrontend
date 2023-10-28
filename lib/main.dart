import 'package:flutter/material.dart';
import 'package:hotelhubb/Pages/ForgotPassword.dart';
import 'package:hotelhubb/Pages/LoginPage.dart';
import 'package:hotelhubb/Pages/RegisterPage.dart';
import 'package:hotelhubb/Pages/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'HotelHubb',
      initialRoute: '/splash',
      routes: {
        '/splash':(context) => SplashScreen(),
        '/login':(context) => LoginScreen(),
        '/forgot':(context) => ForgotPassword(),
        '/register':(context) => RegisterScreen(),
      },
      
    );
  }
}




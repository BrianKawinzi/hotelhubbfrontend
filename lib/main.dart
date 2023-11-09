import 'package:flutter/material.dart';
import 'package:hotelhubb/Pages/ForgotPassword.dart';
import 'package:hotelhubb/Pages/LoginPage.dart';
import 'package:hotelhubb/Pages/RegisterPage.dart';
import 'package:hotelhubb/Pages/SplashScreen.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
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




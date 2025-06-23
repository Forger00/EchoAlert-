import 'package:echoalert/screens/home_screen.dart';
import 'package:echoalert/screens/login.dart';
import 'package:echoalert/screens/profile_screen.dart';
import 'package:echoalert/screens/signup_screen.dart';
import 'package:echoalert/services/aftersos_screen.dart';
import 'package:echoalert/screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      initialRoute: '/splash',
      routes: {
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileTab(),
        '/sos': (context) => AftersosScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/splash': (context) => SplashScreen(),
      },
    );
  }
}

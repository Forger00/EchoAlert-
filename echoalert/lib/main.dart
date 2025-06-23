<<<<<<< HEAD

import 'package:echoalert/screen/splash_screen.dart';
=======
import 'package:echoalert/components/navbar_screen.dart';
import 'package:echoalert/screens/home_screen.dart';
import 'package:echoalert/screens/profile_screen.dart';
import 'package:echoalert/services/aftersos_screen.dart';
>>>>>>> 3f4068ef0aa17053260ef2f9a717d2ae4a469842
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
      initialRoute: '/sos',
      routes: {
        '/home': (context) => HomeScreen(),
        '/profile': (context) => ProfileScreen(),
        '/sos': (context) => AftersosScreen(),
      },
    );
  }
}

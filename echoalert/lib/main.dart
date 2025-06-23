

// import 'package:echoalert/screen/splash_screen.dart';

import 'package:echoalert/components/navbar_screen.dart';
import 'package:echoalert/screens/home_screen.dart';
import 'package:echoalert/screens/profile_screen.dart';
import 'package:echoalert/services/aftersos_screen.dart';
import 'package:echoalert/services/receiver.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: EmergencyAlertCard(),
    );
  }
}
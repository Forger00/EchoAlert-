import 'package:echoalert/screens/profile_screen.dart';
import 'package:echoalert/screens/signup_screen.dart';
import 'package:echoalert/services/profile_tab.dart';
import 'package:echoalert/services/setting_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Flutter Demo', home: SettingScreen());
  }
}

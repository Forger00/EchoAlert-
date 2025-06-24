import 'package:echoalert/firebase_options.dart';
import 'package:echoalert/screens/contact_screen.dart';
import 'package:echoalert/screens/home_screen.dart';
import 'package:echoalert/screens/login.dart';
import 'package:echoalert/screens/signup_screen.dart';
import 'package:echoalert/services/aftersos_screen.dart';
import 'package:echoalert/screens/splash_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          final user = FirebaseAuth.instance.currentUser;

          if (user != null) {
            return FutureBuilder(
              future: user.reload(),
              builder: (context, reloadSnapshot) {
                if (reloadSnapshot.connectionState == ConnectionState.done) {
                  if (FirebaseAuth.instance.currentUser == null) {
                    return const SplashScreen();
                  }
                  return const HomeScreen();
                } else {
                  return const Center(child: CircularProgressIndicator());
                }
              },
            );
          } else {
            return const SplashScreen();
          }
        },
      ),
      routes: {
        '/home': (context) => HomeScreen(),
        '/sos': (context) => AftersosScreen(),
        '/signup': (context) => SignupScreen(),
        '/login': (context) => LoginScreen(),
        '/splash': (context) => SplashScreen(),
        '/contact': (context) => ContactScreen(),
      },
    );
  }
}

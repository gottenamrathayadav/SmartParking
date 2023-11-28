import 'package:flutter/material.dart';
import 'Welcomescreen.dart';// Replace with your actual file path
import 'Register.dart';
import 'loginscreen.dart';
import 'HomePage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Smart parking',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        'Welcomescreen': (context) => WelcomeScreen(),
        'Register': (context) => RegisterScreen(),
        'loginscreen': (context) => LoginScreen(),
        'HomePage': (context) => HomePage(),
      },
      initialRoute: 'Welcomescreen',
    );
  }
}

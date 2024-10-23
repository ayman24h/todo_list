import 'package:flutter/material.dart';
import 'package:simple_todo/pages/home_page.dart';
import 'package:simple_todo/pages/login_page.dart';
import 'package:simple_todo/pages/signup_page.dart';
import 'package:simple_todo/pages/splash_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Todo App',
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPage(),
        '/login': (context) => LoginPage(
              onLogin: (email) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
        '/signup': (context) => SignUpPage(
              onSignUp: (email, password, username) {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),
                );
              },
            ),
      },
    );
  }
}

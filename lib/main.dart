import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_project/module/auth/login_page.dart';
import 'package:firebase_project/shared/constants.dart';
import 'package:flutter/material.dart';

import 'module/auth/register_page.dart';
import 'module/views/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Constants().primaryColor,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const LoginPage(),
      initialRoute: 'login-page',
      routes: {
        'login-page': (ctx) {
          return LoginPage();
        },
        'register-page': (ctx) {
          return RegisterPage();
        },
        'home-page': (ctx) {
          return HomePage();
        },
      },
    );
  }
}

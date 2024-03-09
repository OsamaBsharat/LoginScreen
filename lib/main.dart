import 'package:flutter/material.dart';
import 'package:login_app_ui/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromRGBO(30, 88, 241, 1)),
        useMaterial3: true,
      ),
      home: LoginPage(),
    );
  }
}

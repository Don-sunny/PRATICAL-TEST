import 'package:flutter/material.dart';
import 'package:practical_test/database/repository/login_request.dart';
import 'package:practical_test/screens/login/login_screen.dart';

void main() {
  sendRequest();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: false,
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
              backgroundColor: Colors.black)),
      home: const LoginScreen(),
    );
  }
}

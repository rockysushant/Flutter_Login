import 'package:flutter/material.dart';
import 'package:login/login_page.dart';

void main() {
  runApp(MyApp()); // Remove the 'const' keyword here
}

class MyApp extends StatelessWidget { MyApp({Key? key});


  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LoginPage(),
    );
  }
}

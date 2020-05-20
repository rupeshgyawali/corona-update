import 'package:flutter/material.dart';

import 'screens/get_started.dart';
import 'screens/home/home.dart';

void main() {
  runApp(CoronaUpdateApp());
}

class CoronaUpdateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corona Update',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xFF548A97),
      ),
      routes: <String, Widget Function(BuildContext)>{
        '/home': (context) => HomeScreen(),
        '/get_started': (context) => GetStartedScreen(),
      },
      initialRoute: '/get_started',
    );
  }
}

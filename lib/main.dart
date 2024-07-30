import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:machine_test_ui_screens/screens/bottom_nav_widget.dart';
import 'package:machine_test_ui_screens/screens/order_screen.dart';
import 'package:machine_test_ui_screens/screens/splash_screen.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.white,
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'De Cafe',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const BottomNavBarWidget(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:tabb_view_demo/home_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  List<Widget> pages = [];

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: HomePage());
  }
}

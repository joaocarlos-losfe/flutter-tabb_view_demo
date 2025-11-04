import 'package:flutter/material.dart';
import 'package:tabb_view_demo/widgets/custom_tabb_view.dart';
import 'package:tabb_view_demo/widgets/native_tabb_view.dart';
import 'package:tabb_view_demo/widgets/tab_view_package.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;

  final pages = [NativeTabbView(), CustomTabbView(), TabbedViewExample()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index) => setState(() => currentPage = index),
        currentIndex: currentPage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Native"),
          BottomNavigationBarItem(icon: Icon(Icons.star), label: "Custom"),
          BottomNavigationBarItem(icon: Icon(Icons.square), label: "Package"),
        ],
      ),
    );
  }
}

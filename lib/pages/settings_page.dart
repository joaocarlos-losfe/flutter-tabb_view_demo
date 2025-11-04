import 'package:flutter/material.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.settings, size: 80, color: Colors.orange),
          SizedBox(height: 16),
          Text('Configurações', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

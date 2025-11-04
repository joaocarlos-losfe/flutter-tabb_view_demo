import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(Icons.person, size: 80, color: Colors.green),
          SizedBox(height: 16),
          Text('Perfil do Usuário', style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class SecondHomePage extends StatelessWidget {
  final VoidCallback? onOpenNewTab;

  const SecondHomePage({super.key, this.onOpenNewTab});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton.icon(
        icon: const Icon(Icons.tab),
        label: const Text('Abrir nova guia'),
        onPressed: onOpenNewTab,
      ),
    );
  }
}

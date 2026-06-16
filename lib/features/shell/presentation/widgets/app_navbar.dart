import 'package:flutter/material.dart';

class AppNavbar extends StatelessWidget {
  const AppNavbar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('MOE_KYAW_AUNG V99', style: TextStyle(fontFamily: 'JetBrainsMono')),
      actions: [
        IconButton(icon: const Icon(Icons.dark_mode), onPressed: () {}),
      ],
    );
  }
}

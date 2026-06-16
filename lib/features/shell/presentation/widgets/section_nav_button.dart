import 'package:flutter/material.dart';

class SectionNavButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SectionNavButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: onTap, child: Text(title));
  }
}

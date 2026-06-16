import 'package:flutter/material.dart';

class SectionTitle extends StatelessWidget {
  final String title;
  final String label;
  const SectionTitle({super.key, required this.title, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: const TextStyle(fontSize: 14, color: Color(0xFF00D9A5), fontWeight: FontWeight.bold)),
        Text(title, style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

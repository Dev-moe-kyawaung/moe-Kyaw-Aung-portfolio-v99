import 'package:flutter/material.dart';

class BackToTopButton extends StatelessWidget {
  const BackToTopButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: const Color(0xFF00D9A5),
      onPressed: () {
        // Scroll to top logic here
      },
      child: const Icon(Icons.arrow_upward),
    );
  }
}

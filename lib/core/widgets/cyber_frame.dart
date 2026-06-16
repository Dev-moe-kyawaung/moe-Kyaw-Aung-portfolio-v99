import 'package:flutter/material.dart';

class CyberFrame extends StatelessWidget {
  final Widget child;
  const CyberFrame({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: const Color(0xFF00D9A5), width: 1.5),
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(color: const Color(0xFF00D9A5).withOpacity(0.3), blurRadius: 10),
        ],
      ),
      child: child,
    );
  }
}

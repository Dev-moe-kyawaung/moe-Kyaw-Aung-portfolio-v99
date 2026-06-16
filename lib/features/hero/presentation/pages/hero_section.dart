import 'package:flutter/material.dart';
import '../../../../../core/widgets/cyber_frame.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CyberFrame(
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.85,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('★ SENIOR ANDROID DEVELOPER ★', style: const TextStyle(fontSize: 20, color: Color(0xFF00D9A5))),
              const SizedBox(height: 16),
              Text('MOE KYAW AUNG', style: const TextStyle(fontSize: 56, fontWeight: FontWeight.bold)),
              const SizedBox(height: 12),
              Text('V99 • 12 Years Experience', style: const TextStyle(fontSize: 24)),
            ],
          ),
        ),
      ),
    );
  }
}

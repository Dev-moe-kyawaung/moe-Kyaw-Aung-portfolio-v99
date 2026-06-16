import 'package:flutter/material.dart';
import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CyberFrame(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SectionTitle(title: 'Advanced About Section', label: '01 — INTRODUCTION'),
            const SizedBox(height: 16),
            Text('Android Developer with nearly 12 years of hands-on experience building secure, scalable, and user-friendly mobile applications.', style: const TextStyle(fontSize: 16)),
          ],
        ),
      ),
    );
  }
}

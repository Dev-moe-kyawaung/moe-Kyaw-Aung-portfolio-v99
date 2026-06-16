import 'package:flutter/material.dart';
import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../widgets/contact_form.dart';
import '../widgets/social_links_grid.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CyberFrame(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SectionTitle(title: 'Contact', label: '05 — LET\'S CONNECT'),
            const SizedBox(height: 24),
            const ContactForm(),
            const SizedBox(height: 24),
            const SocialLinksGrid(),
          ],
        ),
      ),
    );
  }
}

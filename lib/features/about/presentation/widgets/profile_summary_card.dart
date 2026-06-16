import 'package:flutter/material.dart';
import '../../../../../data/models/profile_model.dart';

class ProfileSummaryCard extends StatelessWidget {
  final ProfileModel profile;
  const ProfileSummaryCard({super.key, required this.profile});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF161616),
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CircleAvatar(radius: 60, backgroundImage: NetworkImage(profile.profileImage)),
            const SizedBox(height: 16),
            Text(profile.name, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            Text(profile.tagline, style: const TextStyle(color: Color(0xFF00D9A5))),
            const SizedBox(height: 8),
            Text(profile.location),
            Text(profile.languages),
          ],
        ),
      ),
    );
  }
}

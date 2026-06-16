import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../data/models/project_model.dart';

class ProjectCard extends StatelessWidget {
  final ProjectModel project;
  const ProjectCard({super.key, required this.project});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF161616),
      child: Column(
        children: [
          Image.network(project.image, height: 160, fit: BoxFit.cover),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                Text(project.title, style: const TextStyle(fontWeight: FontWeight.bold)),
                Text(project.tech, style: const TextStyle(color: Color(0xFF00D9A5))),
                TextButton(
                  onPressed: () => launchUrl(Uri.parse(project.github)),
                  child: const Text('GitHub'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

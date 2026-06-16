import 'package:flutter/material.dart';
import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../../../../../data/data_sources/portfolio_data_source.dart';
import '../../../../../data/models/project_model.dart';
import '../widgets/project_card.dart';

class ProjectsSection extends StatelessWidget {
  const ProjectsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CyberFrame(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SectionTitle(title: 'My Created Apps', label: '04 — PORTFOLIO'),
            const SizedBox(height: 24),
            FutureBuilder<List<ProjectModel>>(
              future: PortfolioDataSource().getProjects(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const SizedBox();
                return GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.85,
                  ),
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ProjectCard(project: snapshot.data![index]);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

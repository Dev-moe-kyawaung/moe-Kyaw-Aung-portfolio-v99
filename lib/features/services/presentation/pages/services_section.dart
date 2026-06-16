import 'package:flutter/material.dart';
import '../../../../../core/widgets/cyber_frame.dart';
import '../../../../../core/widgets/section_title.dart';
import '../../../../../data/data_sources/portfolio_data_source.dart';
import '../../../../../data/models/service_model.dart';
import '../widgets/service_card.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return CyberFrame(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const SectionTitle(title: 'Services', label: '11 — SERVICES'),
            const SizedBox(height: 24),
            FutureBuilder<List<ServiceModel>>(
              future: PortfolioDataSource().getServices(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const SizedBox();
                return Wrap(
                  spacing: 16,
                  runSpacing: 16,
                  children: snapshot.data!.map((s) => ServiceCard(service: s)).toList(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

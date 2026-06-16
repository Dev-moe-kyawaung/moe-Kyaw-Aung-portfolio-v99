import 'package:flutter/material.dart';
import '../../../../../data/data_sources/portfolio_data_source.dart';

class HeroStatsRow extends StatelessWidget {
  const HeroStatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PortfolioDataSource().getProfile(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox();
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildStat('12', 'Years'),
            _buildStat('3K+', 'Apps'),
            _buildStat('122', 'Repos'),
          ],
        );
      },
    );
  }

  Widget _buildStat(String value, String label) {
    return Column(children: [
      Text(value, style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
      Text(label, style: const TextStyle(color: Color(0xFF00D9A5))),
    ]);
  }
}

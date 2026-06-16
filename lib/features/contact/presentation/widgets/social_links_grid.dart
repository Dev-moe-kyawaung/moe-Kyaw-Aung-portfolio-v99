import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../../../data/models/social_link_model.dart';
import '../../../../../data/data_sources/portfolio_data_source.dart';

class SocialLinksGrid extends StatefulWidget {
  const SocialLinksGrid({super.key});

  @override
  State<SocialLinksGrid> createState() => _SocialLinksGridState();
}

class _SocialLinksGridState extends State<SocialLinksGrid> {
  late Future<List<SocialLinkModel>> _links;

  @override
  void initState() {
    super.initState();
    _links = PortfolioDataSource().getSocialLinks();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SocialLinkModel>>(
      future: _links,
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const SizedBox();
        return Wrap(
          spacing: 12,
          runSpacing: 12,
          children: snapshot.data!.map((link) => ElevatedButton.icon(
            onPressed: () => launchUrl(Uri.parse(link.url)),
            icon: Icon(link.icon == 'github' ? Icons.gitHub : Icons.link),
            label: Text(link.name),
          )).toList(),
        );
      },
    );
  }
}

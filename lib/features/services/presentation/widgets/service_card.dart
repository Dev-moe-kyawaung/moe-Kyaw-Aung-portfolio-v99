import 'package:flutter/material.dart';
import '../../../../../data/models/service_model.dart';

class ServiceCard extends StatelessWidget {
  final ServiceModel service;
  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color(0xFF161616),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(service.title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            Text(service.price, style: const TextStyle(color: Color(0xFF00D9A5), fontSize: 22)),
            Text(service.description),
          ],
        ),
      ),
    );
  }
}

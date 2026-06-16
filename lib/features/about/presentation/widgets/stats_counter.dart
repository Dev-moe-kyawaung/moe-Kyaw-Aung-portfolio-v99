import 'package:flutter/material.dart';

class StatsCounter extends StatefulWidget {
  final int target;
  final String label;
  const StatsCounter({super.key, required this.target, required this.label});

  @override
  State<StatsCounter> createState() => _StatsCounterState();
}

class _StatsCounterState extends State<StatsCounter> {
  int current = 0;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      // Animated counter logic (simple version)
      setState(() => current = widget.target);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(current.toString(), style: const TextStyle(fontSize: 36, fontWeight: FontWeight.bold)),
        Text(widget.label, style: const TextStyle(color: Color(0xFF00D9A5))),
      ],
    );
  }
}

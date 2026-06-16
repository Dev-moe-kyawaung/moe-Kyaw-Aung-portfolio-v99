import 'package:flutter/material.dart';

class AnimatedTypingText extends StatefulWidget {
  final String text;
  const AnimatedTypingText({super.key, required this.text});

  @override
  State<AnimatedTypingText> createState() => _AnimatedTypingTextState();
}

class _AnimatedTypingTextState extends State<AnimatedTypingText> {
  String _displayed = '';
  int _index = 0;

  @override
  void initState() {
    super.initState();
    _typeText();
  }

  Future<void> _typeText() async {
    for (int i = 0; i < widget.text.length; i++) {
      await Future.delayed(const Duration(milliseconds: 50));
      if (mounted) setState(() => _displayed += widget.text[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Text(_displayed, style: const TextStyle(fontSize: 24));
  }
}

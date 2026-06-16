import 'package:flutter/material.dart';
import 'package:three_dart/three_dart.dart' as three;
import 'package:firebase_core/firebase_core.dart';
import 'app/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MoeKyawAungPortfolioV99());
}

class MoeKyawAungPortfolioV99 extends StatelessWidget {
  const MoeKyawAungPortfolioV99({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moe Kyaw Aung - Senior Android Developer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(primaryColor: const Color(0xFF00D9A5)),
      home: const PortfolioShellPage(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
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
      theme: ThemeData.dark().copyWith(
        primaryColor: const Color(0xFF00D9A5),
        scaffoldBackgroundColor: const Color(0xFF0A0A0A),
      ),
      locale: const Locale('en'),
      supportedLocales: const [Locale('en'), Locale('my')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      home: const PortfolioShellPage(),
    );
  }
}

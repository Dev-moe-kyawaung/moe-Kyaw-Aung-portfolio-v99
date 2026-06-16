import 'package:flutter/material.dart';
import 'theme/app_theme.dart';
import '../features/shell/presentation/pages/portfolio_shell_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Moe Kyaw Aung Portfolio V99',
      theme: AppTheme.darkTheme,
      home: const PortfolioShellPage(),
      supportedLocales: const [Locale('en'), Locale('my')],
      localizationsDelegates: AppLocalizations.localizationsDelegates,
    );
  }
}

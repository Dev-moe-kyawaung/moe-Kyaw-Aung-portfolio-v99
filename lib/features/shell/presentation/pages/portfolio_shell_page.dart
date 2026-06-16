import 'package:flutter/material.dart';
import '../../about/presentation/pages/about_section.dart';
import '../../contact/presentation/pages/contact_section.dart';
import '../../hero/presentation/pages/hero_section.dart';
import '../../projects/presentation/pages/projects_section.dart';
import '../../services/presentation/pages/services_section.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_navbar.dart';
import '../widgets/back_to_top_button.dart';
import '../widgets/section_nav_button.dart';

class PortfolioShellPage extends StatefulWidget {
  const PortfolioShellPage({super.key});

  @override
  State<PortfolioShellPage> createState() => _PortfolioShellPageState();
}

class _PortfolioShellPageState extends State<PortfolioShellPage> {
  final ScrollController _scrollController = ScrollController();
  int _currentIndex = 0;

  final List<Widget> _sections = [
    const HeroSection(),
    const AboutSection(),
    const ProjectsSection(),
    const ServicesSection(),
    const ContactSection(),
  ];

  void _scrollTo(int index) {
    _scrollController.animateTo(
      index * MediaQuery.of(context).size.height,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0A0A0A),
      drawer: const AppDrawer(),
      appBar: const AppNavbar(),
      body: Scrollbar(
        controller: _scrollController,
        child: SingleChildScrollView(
          controller: _scrollController,
          child: Column(
            children: [
              ..._sections,
              const SizedBox(height: 100),
            ],
          ),
        ),
      ),
      floatingActionButton: const BackToTopButton(),
    );
  }
}

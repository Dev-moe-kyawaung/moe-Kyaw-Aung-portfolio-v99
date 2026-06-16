import 'package:flutter/material.dart';
import '../../../../../core/widgets/cyber_frame.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFF0A0A0A),
      child: ListView(
        children: [
          const DrawerHeader(child: CyberFrame(child: Center(child: Text('MENU', style: TextStyle(fontSize: 24))))),
          ListTile(title: const Text('About'), onTap: () => Navigator.pop(context)),
          ListTile(title: const Text('Projects'), onTap: () => Navigator.pop(context)),
          ListTile(title: const Text('Services'), onTap: () => Navigator.pop(context)),
          ListTile(title: const Text('Contact'), onTap: () => Navigator.pop(context)),
        ],
      ),
    );
  }
}

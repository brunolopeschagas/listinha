import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 28, 16, 16),
          child: const Text('Opções'),
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.sync),
          label: Row(
            children: const [
              Text('Sincronizar'),
              SizedBox(width: 10),
              Text('12/12/2023'),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.settings),
          label: Text('Configurações'),
        ),
      ],
    );
  }
}

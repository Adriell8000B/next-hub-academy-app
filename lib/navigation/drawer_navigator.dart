import 'package:flutter/material.dart';

class DrawerNavigator extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const DrawerNavigator({
    super.key,
    required this.currentIndex,
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      children: [
        NavigationDrawerDestination(
          icon: Icon(Icons.home),
          label: Text('Início')
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.school),
          label: Text('Cursos')
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.workspace_premium),
          label: Text('Planos')
        ),
        NavigationDrawerDestination(
          icon: Icon(Icons.help),
          label: Text('Ajuda')
        ),
      ],
    );
  }
}
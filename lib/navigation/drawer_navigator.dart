import 'package:flutter/material.dart';

class DrawerNavigator extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;
  const DrawerNavigator({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NavigationDrawer(
      selectedIndex: currentIndex,
      onDestinationSelected: onTap,
      children: [
        const Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage('https://i.pravatar.cc/150?u=a'),
              ),
              SizedBox(height: 16),
              Text('user8000b', style: TextStyle(fontWeight: FontWeight.bold)),
              SizedBox(height: 4),
              Text('email@duck.com', style: TextStyle(color: Colors.grey),),
            ],
          ),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.home),
          label: Text('Início'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.school),
          label: Text('Cursos'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.workspace_premium),
          label: Text('Planos'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.person),
          label: Text('Perfil'),
        ),
        const NavigationDrawerDestination(
          icon: Icon(Icons.help),
          label: Text('Ajuda'),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:nexthubacademy/widgets/nexthub_about_widget.dart';
import 'package:nexthubacademy/widgets/nexthub_hero_widget.dart';

class HomeScreen extends StatelessWidget {
  final Function(int) onNavigate;

  const HomeScreen({super.key, required this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            NexthubHeroWidget(
              onTap: () => onNavigate(1),
            ),
            const SizedBox(height: 15),
            Divider(thickness: 0.5,),
            const SizedBox(height: 15),
            NexthubAboutWidget()
          ],
        ),
      ),
    );
  }
}

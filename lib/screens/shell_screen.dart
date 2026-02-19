import 'package:flutter/material.dart';
import 'package:nexthubacademy/navigation/drawer_navigator.dart';
import 'package:nexthubacademy/screens/courses_screen.dart';
import 'package:nexthubacademy/screens/help_screen.dart';
import 'package:nexthubacademy/screens/home_screen.dart';
import 'package:nexthubacademy/screens/plans_screen.dart';
import 'package:nexthubacademy/widgets/appbar_widget.dart';

class ShellScreen extends StatefulWidget {
  const ShellScreen({super.key});

  @override
  State<ShellScreen> createState() => _ShellScreenState();
}

class _ShellScreenState extends State<ShellScreen> {
  int currentIndex = 0;

  void _navigate(int index) {
    if (index == currentIndex) return;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        setState(() {
          currentIndex = index;
        });
      }
    });
  }

  void _navigateFromButton(int index) {
    _navigate(index);
  }

  void _navigateFromDrawer(int index) {
    Navigator.pop(context);
    _navigate(index);
  }

  late List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      HomeScreen(onNavigate: _navigateFromButton),
      CoursesScreen(),
      PlansScreen(),
      HelpScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(),
      endDrawer: DrawerNavigator(
        currentIndex: currentIndex,
        onTap: _navigateFromDrawer,
      ),
      body: SafeArea(
        child: IndexedStack(index: currentIndex, children: _pages),
      ),
    );
  }
}

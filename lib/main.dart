import 'package:flutter/material.dart';
import 'package:nexthubacademy/screens/shell_screen.dart';

void main() {
  runApp(const NextHubAcademy());
}

class NextHubAcademy extends StatelessWidget {
  const NextHubAcademy({super.key});

  @override
  Widget build(BuildContext context) {
    const Color nightBlue = Color(0xFF111722);
    const Color nightBlue_2 = Color(0xFF162032);
    const Color skyBlue = Color(0xFF0096FF);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,

        colorScheme: ColorScheme.fromSeed(
          seedColor: skyBlue,
          brightness: Brightness.dark,
          surface: nightBlue,
        ),
        scaffoldBackgroundColor: nightBlue,

        appBarTheme: AppBarTheme(
          backgroundColor: nightBlue,
          surfaceTintColor: Colors.transparent,
          elevation: 0,
        ),

        navigationDrawerTheme: NavigationDrawerThemeData(
          backgroundColor: nightBlue
        ),

        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: nightBlue_2,
        ),

        popupMenuTheme: PopupMenuThemeData(
          color: nightBlue_2
        )
      ),

      home: ShellScreen(),
    );
  }
}

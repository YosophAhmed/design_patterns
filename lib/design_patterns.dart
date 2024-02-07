import 'package:design_patterns/home_page.dart';
import 'package:flutter/material.dart';

class DesignPatterns extends StatelessWidget {
  const DesignPatterns({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomePage.routeName,
      routes: {
        HomePage.routeName: (context) => const HomePage(),
      },
    );
  }
}

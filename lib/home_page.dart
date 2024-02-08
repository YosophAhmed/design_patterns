import 'package:design_patterns/widgets/counter_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const String routeName = 'HomePage';

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: CounterWidget(),
      ),
    );
  }
}

import 'package:design_patterns/patterns_models/builder_design_pattern_models/pizza_builder.dart';
import 'package:flutter/material.dart';

class PizzaWidget extends StatefulWidget {
  const PizzaWidget({super.key});

  @override
  State<PizzaWidget> createState() => _PizzaWidgetState();
}

class _PizzaWidgetState extends State<PizzaWidget> {
  String _pizzaName = '';
  int _counter = 0;
  PizzaDirector director = PizzaDirector();
  PizzaBuilder hawaiianPizza = HawaiianPizzaBuilder();
  PizzaBuilder newYorkPizza = NewYorkPizzaBuilder();

  void _buildPizza() {
    setState(
      () {
        _counter++;
        if (_counter % 2 == 0) {
          director.setPizzaBuilder(hawaiianPizza);
          director.makePizza();
          Pizza myPizza = director.getPizza();
          _pizzaName = myPizza.toString();
        } else {
          director.setPizzaBuilder(newYorkPizza);
          director.makePizza();
          Pizza myPizza = director.getPizza();
          _pizzaName = myPizza.toString();
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          _pizzaName,
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        TextButton(
          onPressed: _buildPizza,
          child: const Text(
            'Create Pizza',
          ),
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

enum PizzaSize {
  small,
  medium,
  large,
  extraLarge,
}

enum PizzaSauce {
  none,
  tomato,
  garlic,
  hot,
  mild,
}

enum PizzaCrust {
  classic,
  deepDish,
  panBaked,
  cross,
  newYork,
}

class Pizza {
  late PizzaSize _size;
  late PizzaCrust _crust;
  late PizzaSauce _sauce;
  late String _notes;
  late String _name;
  late double _price;

  PizzaSize get size => _size;
  PizzaCrust get crust => _crust;
  PizzaSauce get sauce => _sauce;
  String get name => _name;
  String get notes => _notes;
  double get price => _price;

  void setPrice(double price) => _price = price;
  void setName(String name) => _name = name;
  void setSize(PizzaSize size) => _size = size;
  void setCrust(PizzaCrust crust) => _crust = crust;
  void setSauce(PizzaSauce sauce) => _sauce = sauce;
  void addNotes(String notes) => _notes = notes;

  @override
  String toString() {
    return 'A Delicious $_name with ${_crust.toString().split(".")[1]} crust covered';
  }
}

abstract class PizzaBuilder {
  @protected
  late String name;
  @protected
  late Pizza pizza;

  void createPizza() {
    pizza = Pizza();
    pizza.setName(name);
  }

  Pizza getPizza() => pizza;

  void setPizzaPrice(double price) => pizza.setPrice(price);
  void setSize(PizzaSize size) => pizza.setSize(size);
  void addNotes(String notes) => pizza.addNotes(notes);

  void buildSauce();
  void buildCrust();
}

class HawaiianPizzaBuilder extends PizzaBuilder {
  static const String pizzaName = 'Hawaiian Pizza';

  HawaiianPizzaBuilder() {
    super.name = pizzaName;
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.classic);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.mild);
  }
}

class NewYorkPizzaBuilder extends PizzaBuilder {
  static const String pizzaName = 'New York Pizza';

  NewYorkPizzaBuilder() {
    super.name = pizzaName;
  }

  @override
  void buildCrust() {
    pizza.setCrust(PizzaCrust.newYork);
  }

  @override
  void buildSauce() {
    pizza.setSauce(PizzaSauce.tomato);
  }
}

class PizzaDirector {
  late PizzaBuilder _pizzaBuilder;

  void setPizzaBuilder(PizzaBuilder pizzaBuilder) =>
      _pizzaBuilder = pizzaBuilder;

  Pizza getPizza() => _pizzaBuilder.getPizza();

  void makePizza() {
    _pizzaBuilder.createPizza();
    _pizzaBuilder.buildCrust();
    _pizzaBuilder.buildSauce();
  }
}

import 'dart:developer';

import 'package:design_patterns/general_patterns_models/observer_design_pattern/observer/observer_interface.dart';

class ConcreteObserver implements Observer {
  final String _name;

  ConcreteObserver(this._name);

  @override
  void update(String message) {
    log('$_name received message: $message');
  }
}

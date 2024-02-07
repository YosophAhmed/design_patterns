import 'package:design_patterns/general_patterns_models/state_design_pattern/states/state_interface.dart';

class Context {
  late State _currentState;

  Context(State initialState) {
    _currentState = initialState;
  }

  void setState(State newState) {
    _currentState = newState;
  }

  void request() {
    _currentState.performAction(this);
  }
}

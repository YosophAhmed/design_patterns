import 'package:design_patterns/general_patterns_models/adapter_design_pattern/new_system.dart';

class Client {
  void useNewSystem(NewSystem newSystem) {
    newSystem.doSomething();
  }
}
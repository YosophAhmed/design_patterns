import 'dart:developer';

import 'package:design_patterns/general_patterns_models/strategy_design_pattern/strategy/strategy_interface.dart';

class SecondStrategy implements Strategy {
  @override
  void execute() {
    log('Second Strategy executed');
  }
}

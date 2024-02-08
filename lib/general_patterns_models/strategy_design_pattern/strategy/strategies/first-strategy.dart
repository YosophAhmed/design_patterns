import 'dart:developer';

import 'package:design_patterns/general_patterns_models/strategy_design_pattern/strategy/strategy_interface.dart';

class FirstStrategy implements Strategy {
  @override
  void execute() {
    log('First Strategy executed');
  }
}

import 'dart:developer';

import 'package:design_patterns/general_patterns_models/strategy_design_pattern/strategy/strategy_interface.dart';

class ThirdStrategy implements Strategy {
  @override
  void execute() {
    log('Third Strategy executed');
  }
}

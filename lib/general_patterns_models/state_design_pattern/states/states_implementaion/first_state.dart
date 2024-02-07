import 'dart:developer';

import 'package:design_patterns/general_patterns_models/state_design_pattern/states/states_implementaion/second_state.dart';

import '../../context_model.dart';
import '../state_interface.dart';

class FirstState implements State {
  @override
  void performAction(Context context) {
    log('Performing action in the first State and switching to the next state');
    context.setState(SecondState());
  }
}

import 'dart:developer';

import '../../context_model.dart';
import '../state_interface.dart';
import 'first_state.dart';

class ThirdState implements State {
  @override
  void performAction(Context context) {
    log('Performing action in the Third State and switching to the next state');
    context.setState(FirstState());
  }
}

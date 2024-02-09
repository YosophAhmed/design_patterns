import 'package:design_patterns/general_patterns_models/adapter_design_pattern/new_system.dart';
import 'package:design_patterns/general_patterns_models/adapter_design_pattern/old_system.dart';

class OldSystemAdapter implements NewSystem {
  final OldSystem _oldSystem;

  OldSystemAdapter(this._oldSystem);

  @override
  void doSomething() {
    _oldSystem.doSomethingOld();
  }
}
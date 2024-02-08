import 'package:design_patterns/general_patterns_models/strategy_design_pattern/strategy/strategy_interface.dart';

class StrategyContext {
  late Strategy _strategy;

  StrategyContext(this._strategy);

  void setStrategy(Strategy strategy) {
    _strategy = strategy;
  }

  void request() {
    _strategy.execute();
  }
}

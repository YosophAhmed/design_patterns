import '../context_model.dart';

abstract class State {
  void performAction(Context context);
}

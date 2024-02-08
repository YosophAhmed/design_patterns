import 'package:design_patterns/general_patterns_models/observer_design_pattern/observer/observer_interface.dart';

abstract class Subject {
  void addObserver(Observer observer);
  void removeObserver(Observer observer);
  void notifyObservers(String message);
}

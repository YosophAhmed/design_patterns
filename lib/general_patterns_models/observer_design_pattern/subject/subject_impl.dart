import 'package:design_patterns/general_patterns_models/observer_design_pattern/observer/observer_interface.dart';
import 'package:design_patterns/general_patterns_models/observer_design_pattern/subject/subject_interface.dart';

class ConcreteSubject implements Subject {
  final List<Observer> _observers = [];

  @override
  void addObserver(Observer observer) {
    _observers.add(observer);
  }

  @override
  void removeObserver(Observer observer) {
    _observers.remove(observer);
  }

  @override
  void notifyObservers(String message) {
    for (var observer in _observers) {
      observer.update(message);
    }
  }
}

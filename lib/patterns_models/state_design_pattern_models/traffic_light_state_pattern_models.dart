import 'package:flutter/material.dart';

abstract class TrafficLightState {
  void nextState(TrafficLight trafficLight);
  Color getColor();
}

class GreenState implements TrafficLightState {
  @override
  Color getColor() {
    return Colors.green;
  }

  @override
  void nextState(TrafficLight trafficLight) {
    trafficLight.setState(YellowState());
  }
}

class YellowState implements TrafficLightState {
  @override
  Color getColor() {
    return Colors.yellow;
  }

  @override
  void nextState(TrafficLight trafficLight) {
    trafficLight.setState(RedState());
  }
}

class RedState implements TrafficLightState {
  @override
  Color getColor() {
    return Colors.red;
  }

  @override
  void nextState(TrafficLight trafficLight) {
    trafficLight.setState(GreenState());
  }
}

class TrafficLight {
  late TrafficLightState _currentTrafficLightState;

  TrafficLight(TrafficLightState initialLightState) {
    _currentTrafficLightState = initialLightState;
  }

  void setState(TrafficLightState newState) {
    _currentTrafficLightState = newState;
  }

  void changeLight() {
    _currentTrafficLightState.nextState(this);
  }

  Color getColor() {
    return _currentTrafficLightState.getColor();
  }
}

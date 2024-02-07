import 'dart:async';

import 'package:design_patterns/patterns_models/state_design_pattern_models/traffic_light_state_pattern_models.dart';
import 'package:flutter/material.dart';

class TrafficLightWidget extends StatefulWidget {
  const TrafficLightWidget({super.key});

  @override
  State<TrafficLightWidget> createState() => _TrafficLightWidgetState();
}

class _TrafficLightWidgetState extends State<TrafficLightWidget> {
  TrafficLight trafficLight = TrafficLight(GreenState());
  int cycle = 0;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(
      const Duration(
        seconds: 3,
      ),
      (timer) {
        setState(() {
          trafficLight.changeLight();
          cycle++;
        });
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: trafficLight.getColor(),
      width: 150,
      height: 300,
      child: Center(
        child: Text(
          'Cycle: $cycle',
          style: const TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

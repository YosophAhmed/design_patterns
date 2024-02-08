import 'package:design_patterns/patterns_models/observer_design_pattern_models/counter_controller.dart';
import 'package:flutter/material.dart';

class CounterWidget extends StatefulWidget {
  const CounterWidget({super.key});

  @override
  State<CounterWidget> createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  late CounterController _counterController;

  @override
  void initState() {
    super.initState();
    _counterController = CounterController();
  }

  @override
  void dispose() {
    super.dispose();
    _counterController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StreamBuilder(
          stream: _counterController.counterStream,
          initialData: 0,
          builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
            if(snapshot.hasData) {
              return Text(
                '${snapshot.data}',
                style: const TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              );
            } else {
              return const Text(
                'no data',
                style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              );
            }
          },
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          color: Colors.green,
          onPressed: () {
            _counterController.eventSink.add(Event.increment);
          },
          icon: const Icon(
            Icons.add,
            size: 35,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        IconButton(
          color: Colors.red,
          onPressed: () {
            _counterController.eventSink.add(Event.decrement);
          },
          icon: const Icon(
            Icons.remove,
            size: 35,
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}

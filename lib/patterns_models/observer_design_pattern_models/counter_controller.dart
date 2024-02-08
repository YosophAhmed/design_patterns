import 'dart:async';

enum Event {
  increment,
  decrement,
}

class CounterController {
  CounterController() {
    listener = eventStream.listen(
      (Event event) {
        switch (event) {
          case Event.increment:
            counter += 1;
            break;
          case Event.decrement:
            counter -= 1;
            break;
          default:
        }
        counterSink.add(counter);
      },
    );
  }

  int counter = 0;

  final StreamController<int> _counterController = StreamController<int>.broadcast();
  final StreamController<Event> _eventController = StreamController<Event>();

  StreamSink<int> get counterSink => _counterController.sink;
  Stream<int> get counterStream => _counterController.stream;

  StreamSink<Event> get eventSink => _eventController.sink;
  Stream<Event> get eventStream => _eventController.stream;

  StreamSubscription? listener;

  dispose() {
    listener?.cancel();
    _counterController.close();
    _eventController.close();
  }
}

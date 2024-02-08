import 'package:flutter/material.dart';

abstract class Renderer {
  Widget render();
}

class ImageRenderer implements Renderer {
  @override
  Widget render() {
    return Image.asset(
      'assets/images/dart_with_flutter.png',
      height: 250,
      width: 250,
    );
  }
}

class ButtonRenderer implements Renderer {
  @override
  Widget render() {
    return ElevatedButton(
      onPressed: () {},
      child: const Text(
        'Elevated button',
      ),
    );
  }
}

class WidgetRenderer implements Renderer {
  @override
  Widget render() {
    return const Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Icon(
          Icons.local_fire_department,
          color: Colors.amberAccent,
        ),
        Text(
          'Row Widget',
        ),
        Icon(Icons.local_fire_department),
      ],
    );
  }
}

import 'package:design_patterns/patterns_models/strategy_design-pattern_models/widget_renderer.dart';
import 'package:flutter/material.dart';

class ChoosingWidget extends StatefulWidget {
  const ChoosingWidget({super.key});

  @override
  State<ChoosingWidget> createState() => _ChoosingWidgetState();
}

class _ChoosingWidgetState extends State<ChoosingWidget> {
  String? renderer;
  Renderer? currentRenderer;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          title: const Text(
            'Render Image',
          ),
          value: 'image',
          groupValue: renderer,
          onChanged: (value) {
            setState(() {
              renderer = value;
              currentRenderer = ImageRenderer();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            'Render Button',
          ),
          value: 'button',
          groupValue: renderer,
          onChanged: (value) {
            setState(() {
              renderer = value;
              currentRenderer = ButtonRenderer();
            });
          },
        ),
        RadioListTile(
          title: const Text(
            'Render Widget',
          ),
          value: 'widget',
          groupValue: renderer,
          onChanged: (value) {
            setState(() {
              renderer = value;
              currentRenderer = WidgetRenderer();
            });
          },
        ),
        Container(
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          child: currentRenderer?.render() ?? const Text('No Render'),
        ),
      ],
    );
  }
}

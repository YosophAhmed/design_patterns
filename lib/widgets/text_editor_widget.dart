import 'package:design_patterns/patterns_models/state_design_pattern_models/text_editor_state_pattern_models.dart';
import 'package:flutter/material.dart';

class TextEditorWidget extends StatefulWidget {
  const TextEditorWidget({super.key});

  @override
  State<TextEditorWidget> createState() => _TextEditorWidgetState();
}

class _TextEditorWidgetState extends State<TextEditorWidget> {
  TextEditor textEditor = TextEditor(DefaultState());
  String text = 'Yosoph Ahmed';

  @override
  void initState() {
    textEditor.enterText(text);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textEditor.getCurrentText(),
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              textEditor.bold();
            });
          },
          child: const Text(
            'Bold',
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              textEditor.italic();
            });
          },
          child: const Text(
            'Italic',
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              textEditor.underline();
            });
          },
          child: const Text(
            'Underline',
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              textEditor.undo();
            });
          },
          child: const Text(
            'Undo',
          ),
        ),
        TextButton(
          onPressed: () {
            setState(() {
              textEditor.redo();
            });
          },
          child: const Text(
            'Redo',
          ),
        ),
      ],
    );
  }
}

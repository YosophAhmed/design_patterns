abstract class TextEditorState {
  String enterText(String currentText, String newText);
  String bold(String currentText);
  String italic(String currentText);
  String underline(String currentText);
  String undo(String currentText);
  String redo(String currentText);
}

class DefaultState implements TextEditorState {
  @override
  String bold(String currentText) {
    return '**$currentText**';
  }

  @override
  String enterText(String currentText, String newText) {
    return '$currentText$newText';
  }

  @override
  String italic(String currentText) {
    return '_${currentText}_';
  }

  @override
  String redo(String currentText) {
    return currentText;
  }

  @override
  String underline(String currentText) {
    return '__${currentText}__';
  }

  @override
  String undo(String currentText) {
    return currentText;
  }
}

class BoldState implements TextEditorState {
  @override
  String bold(String currentText) {
    return currentText;
  }

  @override
  String enterText(String currentText, String newText) {
    return '$currentText$newText';
  }

  @override
  String italic(String currentText) {
    return '_${currentText}_';
  }

  @override
  String redo(String currentText) {
    return currentText;
  }

  @override
  String underline(String currentText) {
    return '__${currentText}__';
  }

  @override
  String undo(String currentText) {
    return currentText;
  }
}

class ItalicState implements TextEditorState {
  @override
  String bold(String currentText) {
    return '**$currentText**';
  }

  @override
  String enterText(String currentText, String newText) {
    return '$currentText$newText';
  }

  @override
  String italic(String currentText) {
    return currentText;
  }

  @override
  String redo(String currentText) {
    return currentText;
  }

  @override
  String underline(String currentText) {
    return '__${currentText}__';
  }

  @override
  String undo(String currentText) {
    return currentText;
  }
}

class UnderlineState implements TextEditorState {
  @override
  String bold(String currentText) {
    return '**$currentText**';
  }

  @override
  String enterText(String currentText, String newText) {
    return '$currentText$newText';
  }

  @override
  String italic(String currentText) {
    return '_${currentText}_';
  }

  @override
  String redo(String currentText) {
    return currentText;
  }

  @override
  String underline(String currentText) {
    return currentText;
  }

  @override
  String undo(String currentText) {
    return currentText;
  }
}

class TextEditor {
  late TextEditorState _currentTextState;
  late String _currentText;
  late List<String> _history;
  late int _historyIndex;

  TextEditor(TextEditorState initialTextState) {
    _currentTextState = initialTextState;
    _currentText = '';
    _history = [];
    _historyIndex = -1;
  }

  void setState(TextEditorState newTextState) {
    _currentTextState = newTextState;
  }

  void enterText(String newText) {
    _currentText = _currentTextState.enterText(_currentText, newText);
    _history.add(_currentText);
    _historyIndex++;
  }

  void bold() {
    _currentText = _currentTextState.bold(_currentText);
    _history.add(_currentText);
    _historyIndex++;
  }

  void italic() {
    _currentText = _currentTextState.italic(_currentText);
    _history.add(_currentText);
    _historyIndex++;
  }

  void underline() {
    _currentText = _currentTextState.underline(_currentText);
    _history.add(_currentText);
    _historyIndex++;
  }

  void undo() {
    if (_historyIndex > 0) {
      _historyIndex--;
      _currentText = _history[_historyIndex];
    }
  }

  void redo() {
    if (_historyIndex < _history.length - 1) {
      _historyIndex++;
      _currentText = _history[_historyIndex];
    }
  }

  String getCurrentText() {
    return _currentText;
  }
}

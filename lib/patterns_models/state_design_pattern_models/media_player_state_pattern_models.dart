import 'package:flutter/material.dart';

abstract class PlayerState {
  void nextState(Player player);

  IconData getIcon();
}

class StoppedState implements PlayerState {
  @override
  void nextState(Player player) {
    player.setState(PlayingState());
  }

  @override
  IconData getIcon() {
    return Icons.stop;
  }
}

class PlayingState implements PlayerState {
  @override
  void nextState(Player player) {
    player.setState(PausedState());
  }

  @override
  IconData getIcon() {
    return Icons.play_arrow;
  }
}

class PausedState implements PlayerState {
  @override
  void nextState(Player player) {
    player.setState(StoppedState());
  }

  @override
  IconData getIcon() {
    return Icons.pause;
  }
}

class Player {
  late PlayerState _currentPlayerState;

  Player(PlayerState initialState) {
    _currentPlayerState = initialState;
  }

  void setState(PlayerState newState) {
    _currentPlayerState = newState;
  }

  void request() {
    _currentPlayerState.nextState(this);
  }

  IconData getIcon() {
    return _currentPlayerState.getIcon();
  }
}
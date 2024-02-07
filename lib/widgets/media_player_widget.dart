import 'dart:async';

import 'package:design_patterns/patterns_models/state_design_pattern_models/media_player_state_pattern_models.dart';
import 'package:flutter/material.dart';

class MediaPlayerWidget extends StatefulWidget {
  const MediaPlayerWidget({super.key});

  @override
  State<MediaPlayerWidget> createState() => _MediaPlayerWidgetState();
}

class _MediaPlayerWidgetState extends State<MediaPlayerWidget> {
  Player player = Player(StoppedState());

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Timer.periodic(
          const Duration(
            seconds: 3,
          ),
              (timer) {
            setState(() {
              player.request();
            });
          },
        );
      },
      icon: Icon(
        player.getIcon(),
        size: 50,
      ),
    );
  }
}

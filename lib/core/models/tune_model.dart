import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class TuneModel {
  final Color color;
  final String sound;
  final String name;
  final Color colorName;

  const TuneModel({
    required this.color,
    required this.sound,
    required this.name,
    required this.colorName,
  });

  playSound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

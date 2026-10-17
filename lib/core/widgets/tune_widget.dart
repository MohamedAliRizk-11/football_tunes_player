import 'package:flutter/material.dart';
import 'package:football_tunes_player/core/models/tune_model.dart';

class TuneWidgets extends StatelessWidget {
  const TuneWidgets({super.key, required this.tunes});
  final TuneModel tunes;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          tunes.playSound();
        },
        child: Container(
          color: tunes.color,
          child: Center(
            child: Text(
              tunes.name,
              style: TextStyle(
                shadows: [
                  Shadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    offset: Offset(2, 2),
                  ),
                ],
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: tunes.colorName,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:football_tunes_player/core/models/tune_model.dart';
import 'package:football_tunes_player/core/widgets/tune_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  final List<TuneModel> tunes = const [
    TuneModel(
      color: Color(0xff444444),
      sound: "sounds/pes6_theme.mp3",
      name: "Pes 6",
      colorName: Color(0xffE0E0E0),
    ),
    TuneModel(
      color: Color(0xff666666),
      sound: "sounds/fifa_2005.mp3",
      name: "Fifa 2005",
      colorName: Color(0xffC5C5C5),
    ),
    TuneModel(
      color: Color(0xff888888),
      sound: "sounds/pes_2011_football_ring.mp3",
      name: "Pes 2011",
      colorName: Color(0xffA8A8A8),
    ),
    TuneModel(
      color: Color(0xffA8A8A8),
      sound: "sounds/pes_2008.mp3",
      name: "Pes 2008",
      colorName: Color(0xff888888),
    ),
    TuneModel(
      color: Color(0xffC5C5C5),
      sound: "sounds/champions_league.mp3",
      name: "Champions League",
      colorName: Color(0xff666666),
    ),
    TuneModel(
      color: Color(0xffE0E0E0),
      sound: "sounds/fifa_world_cup_2010.mp3",
      name: "Fifa World Cup 2010",
      colorName: Color(0xff444444),
    ),
    TuneModel(
      color: Color(0xffF5F5F5),
      sound: "sounds/fifa_22_qatar.mp3",
      name: "Fifa 2022 Qatar",
      colorName: Color(0xff222222),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Football Tunes",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Color(0xff222222),
      ),
      body: Column(children: tunes.map((i) => TuneWidgets(tunes: i)).toList()),
    );
  }

  /*
  List<TuneWidgets> getTuneWigets() {
    List<TuneWidgets> items = [];
    for (var color in tuneColors) {
      items.add(TuneWidgets(color: color));
    }
    return items;
  }
  */
}

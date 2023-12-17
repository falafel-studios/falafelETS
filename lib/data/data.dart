import 'package:falafel_ets/data/stories.dart';

class Points {
  final double health;
  final double money;
  final double energy;
  final double mental;

  operator +(Points p) {
    return Points(
        health: health + p.health,
        money: money + p.money,
        energy: energy + p.energy,
        mental: mental + p.mental);
  }

  const Points({
    required this.health,
    required this.money,
    required this.energy,
    required this.mental,
  });
}

class CardData {
  final int id;
  final String name;
  final String text;
  final String? information;
  final bool informative;
  final Function left;
  final Function right;
  final String img;

  const CardData({
    required this.id,
    required this.name,
    required this.text,
    this.information,
    required this.informative,
    required this.left,
    required this.right,
    required this.img,
  });
}

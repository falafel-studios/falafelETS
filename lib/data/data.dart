import 'dart:math';

class Points {
  final double health;
  final double money;
  final double energy;
  final double mental;

  operator +(Points p) {
    return Points(
        health: max(min(health + p.health, 100), 0),
        money: max(min(money + p.money, 100), 0),
        energy: max(min(energy + p.energy, 100), 0),
        mental: max(min(mental + p.mental, 100), 0));
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
  final String information;
  final bool informative;
  final Function left;
  final Function right;
  final String img;

  const CardData({
    required this.id,
    required this.name,
    required this.text,
    this.information = "",
    required this.informative,
    required this.left,
    required this.right,
    required this.img,
  });
}

import 'package:flutter/material.dart';

import 'data.dart';

class CardStore extends ChangeNotifier {
  CardData card = info[0];

  setCard(CardData card) {
    this.card = card;
    notifyListeners();
  }
}

class PointStore extends ChangeNotifier {
  Points points = const Points(health: 50, money: 50, energy: 50, mental: 50);

  setPoints(Points p) {
    points = p;
    notifyListeners();
  }

  addPoints(Points p) {
    points = points + p;
    notifyListeners();
  }
}

import 'package:flutter/cupertino.dart';

import 'data.dart';

class CardStore extends ChangeNotifier {
  CardData card = info[0];

  setCard(CardData card) {
    this.card = card;
    notifyListeners();
  }
}

class PointStore extends ChangeNotifier {
  Points points = const Points(health: 0, money: 0, energy: 0, mental: 0);

  PointState() {
    points = const Points(health: 0, money: 0, energy: 0, mental: 0);
  }

  setPoints(Points p) {
    points = p;
    notifyListeners();
  }

  addPoints(Points p) {
    points = points + p;
    notifyListeners();
  }
}

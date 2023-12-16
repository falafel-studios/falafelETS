import 'package:falafel_ets/data/stories.dart';
import 'package:flutter/material.dart';

import 'data.dart';


var info = [
  buildStory1(),
];



class CardStore extends ChangeNotifier {
  CardData card = info[0];
  int index = 0;
  setCard(CardData card) {
    this.card = card;
    notifyListeners();
  }

  sumIndex(){
    int position = (index + 1) % info.length;
    setCard(info[position]);
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

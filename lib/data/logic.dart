import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'stores.dart';
import 'data.dart';

nextStory(CardData data){
  return (BuildContext context) {
    var provider = Provider.of<CardStore>(context, listen: false);
    provider.setCard(data);
  };
}


nextStoryPoints(Points points){
  return (BuildContext context) {
    var providerCard = Provider.of<CardStore>(context, listen: false);
    var providerPoint = Provider.of<PointStore>(context, listen: false);
    providerCard.sumIndex();
    providerPoint.setPoints(points);
  };
}

nextStoryPointsAndCard(CardData card, Points points){
  return (BuildContext context) {
    var providerCard = Provider.of<CardStore>(context, listen: false);
    var providerPoint = Provider.of<PointStore>(context, listen: false);
    providerCard.setCard(card);
    providerPoint.setPoints(points);
  };
}
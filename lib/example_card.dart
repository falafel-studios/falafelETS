import 'dart:math';

import 'package:falafel_ets/data/data.dart';
import 'package:flutter/material.dart';

import 'example_candidate_model.dart';

class ExampleCard extends StatelessWidget {
  final CardData candidate;
  final double opacity;

  const ExampleCard(
    this.candidate,
    this.opacity, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int blueColor = min(255, 255 - (opacity.abs() * 130).toInt());
    int greenColor = max(0, min(255, 200 + (opacity * 100).toInt()));
    int redColor = max(0, min(255, 200 - (opacity * 100).toInt()));
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 3,
            blurRadius: 7,
            offset: const Offset(0, 3),
          )
        ],
      ),
      alignment: Alignment.center,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Color.fromARGB(255, redColor, greenColor, blueColor),
                    Color(0xFF5f39f7)
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

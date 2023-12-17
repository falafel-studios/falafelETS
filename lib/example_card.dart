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
    int redColor = max(0, min(255, 100 - (opacity * 150).toInt()));
    return Stack(children: [
      Container(
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
                height: 500,
                width: 600,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: candidate.informative
                        ? [Colors.black45, Colors.black87]
                        : [
                            Color.fromARGB(
                                255, redColor, greenColor, blueColor),
                            Color(0xFF5f39f7)
                          ],
                  ),
                ),
                //FittedBox()
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(15.0, 60.0, 15.0, 10.0),
                  child: SingleChildScrollView(
                      child: SizedBox(
                    child: Text(
                      candidate.text,
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(fontSize: 21, color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
      Opacity(
          opacity: candidate.informative?0:opacity.abs(),
          child: opacity < 0
              ? const Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Padding(
                    padding: EdgeInsets.only(right: 25.0, top: 6.0),
                    child: Text(
                      "No",
                      style: TextStyle(fontSize: 40),
                    ),
                  )
                ])
              : const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                      Padding(
                        padding: EdgeInsets.only(left: 25.0, top: 6.0),
                        child: Text(
                          "Si",
                          style: TextStyle(fontSize: 40),
                        ),
                      )
                    ]))
    ]);
  }
}

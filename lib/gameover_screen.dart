import 'package:falafel_ets/data/data.dart';
import 'package:falafel_ets/data/stores.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class GameOver extends StatelessWidget {
  const GameOver({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        textTheme: GoogleFonts.josefinSansTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const GameOverScreen(),
    );
  }
}

class GameOverScreen extends StatelessWidget {
  const GameOverScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: new BoxDecoration(color: Colors.white38),
      child: Center(
        child: Column(
          children: [
            Padding(
              padding:
                  const EdgeInsets.only(left: 0, top: 300, right: 0, bottom: 0),
              child: Text(
                " Gameover",
                style: TextStyle(fontSize: 60),
              ),
            ),
            Card(
              margin:
                  const EdgeInsets.only(left: 0, top: 150, right: 0, bottom: 0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        var cardStore =
                            Provider.of<CardStore>(context, listen: false);
                        var pointStore =
                            Provider.of<PointStore>(context, listen: false);
                        cardStore.sumIndex();
                        pointStore.setPoints(Points(
                            health: 50, money: 50, energy: 50, mental: 50));
                      },
                      style: ElevatedButton.styleFrom(elevation: 2),
                      child: const Text(
                        'Torna-hi a jugar',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }
}

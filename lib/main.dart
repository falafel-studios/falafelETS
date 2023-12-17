import 'dart:async';

import 'package:falafel_ets/data/data.dart';
import 'package:falafel_ets/data/stores.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:falafel_ets/flutter_card_swiper.dart';
import 'package:falafel_ets/example_candidate_model.dart';
import 'package:falafel_ets/example_card.dart';
import 'package:google_fonts/google_fonts.dart';

import 'liquid.dart';
void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CardStore()),
      ChangeNotifierProvider(create: (context) => PointStore())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        textTheme: GoogleFonts.josefinSansTextTheme(),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StateConsumerExample(),
    );
  }
}

class StateConsumerExample extends StatelessWidget {
  const StateConsumerExample({super.key});

  bool Function(
          int previousIndex, int? currentIndex, CardSwiperDirection direction)
      _onSwipe(BuildContext context) {
    return (
      int previousIndex,
      int? currentIndex,
      CardSwiperDirection direction,
    ) {
      var bool = direction.name == "left";
      debugPrint(
'The card $previousIndex was swiped to the ${direction.name}. Now the card $currentIndex is on top, $bool',
      );
      var cardStore = Provider.of<CardStore>(context, listen: false);
      if (bool) {
        cardStore.card.left(context);
      } else {
        cardStore.card.right(context);
      }
      return true;
    };
  }

  @override
  Widget build(BuildContext context) {
    final CardSwiperController controller = CardSwiperController();
    return Scaffold(

      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: ConstrainedBox(
          
          constraints: BoxConstraints.t,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              LiquidCustomProgressIndicatorPage(),
              Consumer<CardStore>(
                builder: (context, cardSt, _) => Text(
                  cardSt.card.text,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              Container(
                width: 300,
                height: 400,
                child: CardSwiper(
                    controller: controller,
                    cardsCount: 3,
                    onSwipe: _onSwipe(context),
                    numberOfCardsDisplayed: 3,
                    backCardOffset: const Offset(0, 0),
                    padding: const EdgeInsets.all(24.0),
                    cardBuilder: (
                      context,
                      index,
                      horizontalThresholdPercentage,
                      verticalThresholdPercentage,
                      opacity,
                    ) =>
                        Center(
                            child: Container(
                                width: 300,
                                child: Stack(children: [
                                  Consumer<CardStore>(
                                      builder: (ctx, cardStore, _) =>
                                          ExampleCard(cardStore.card,opacity)),
                                  Opacity(
                                      opacity: opacity.abs(),
                                      child: opacity < 0
                                          ? const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(left: 15.0,top: 6.0),
                                                    child: Text(
                                                      "No",
                                                      style:
                                                          TextStyle(fontSize: 40),
                                                    ),
                                                  )
                                                ])
                                          : const Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                  Padding(
                                                    padding: EdgeInsets.only(right: 15.0,top: 6.0),
                                                    child: Text(
                                                      "Si",
                                                      style:
                                                          TextStyle(fontSize: 40),
                                                    ),
                                                  )
                                                ]))
                                ])))),
              ),

            ],
          ),
        ),
      ),
    );
  }
}

import 'package:falafel_ets/data/stores.dart';
import 'package:falafel_ets/example_card.dart';
import 'package:falafel_ets/flutter_card_swiper.dart';
import 'package:falafel_ets/gameover_screen.dart';
import 'package:falafel_ets/liquid.dart';
import 'package:flutter/material.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CardStore()),
        ChangeNotifierProvider(create: (context) => PointStore())
      ],
      child: Consumer<PointStore>(builder: (ctx, pointStore, _) {
        if (pointStore.points.hasZero()) {
          return const GameOver();
        }

        return const MyApp();
      })));
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
    final cong1 = FlipCardController();
    int time = 1000;
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: SizedBox(
          width: 600,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: PointsBar(),
              ),
              Container(
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
                                child: Stack(children: [
                          Consumer<CardStore>(
                            builder: (ctx, cardStore, _) {
                              if (cardStore.flipState) {
                                cardStore.flipState = false;

                                cong1.flipcard();
                              }
                              return GestureDetector(
                                  onTap: () {
                                    if (cardStore.card.informative) {
                                      cardStore.flipState =
                                          !cardStore.flipState;
                                      cong1.flipcard();
                                    }
                                  },
                                  child: cardStore.card.informative
                                      ? FlipCard(
                                          onTapFlipping: false,
                                          controller: cong1,
                                          axis: FlipAxis.vertical,
                                          rotateSide: RotateSide.left,
                                          animationDuration:
                                              Duration(milliseconds: 1000),
                                          frontWidget: Center(
                                              child: ExampleCard(cardStore.card,
                                                  opacity, false)),
                                          backWidget: cardStore.card.informative
                                              ? ExampleCard(
                                                  cardStore.card, opacity, true)
                                              : ExampleCard(cardStore.card,
                                                  opacity, false),
                                        )
                                      : ExampleCard(
                                          cardStore.card, opacity, false));
                            },
                          ),
                        ])))),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

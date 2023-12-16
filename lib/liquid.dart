import 'dart:typed_data';

import 'package:flutter/material.dart';

import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';

import 'package:polygon/polygon.dart';

void main() => runApp(const MaterialApp(home: Example()));

class LiquidCustomProgressIndicatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Liquid Custom Progress Indicators"),
      ),
      body: 
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              buildMoneyState(),
              SizedBox(
                width: 50,
                height: 50,
                child: FittedBox(
                  child: LiquidCustomProgressIndicator(
                    direction: Axis.vertical,
                    value: 0.9,
                    shapePath: _buildThunder()
                  ),
                ),
              ),
              LiquidCustomProgressIndicator(
                direction: Axis.horizontal,
                backgroundColor: Colors.grey[300],
                value: 0.9,
                shapePath: _buildSpeechBubblePath(),
              ),
            ],
          )
    );
  }

  SizedBox buildMoneyState() {
    return SizedBox(
              width: 50,
              height: 50,
              child: FittedBox(
                  child: LiquidCustomProgressIndicator(
                    direction: Axis.vertical,
                    value: 0.9,
                    shapePath: buildDollarPath(),
                  ),
              ),
            );
  }

  Path _buildThunder() {
    return const Polygon([
      Offset(0.25, -1),
      Offset(0, -0.25),
      Offset(0.5, 0),
      Offset(-0.25, 1),
      Offset(0, 0.25),
      Offset(-0.5, 0),
    ]).computePath(rect: const Rect.fromLTRB(0, 0, 200, 200));
  }

  Path buildDollarPath() {
    return Path()
      ..moveTo(406.195, 383.984)
      ..cubicTo(397.804, 399.71799999999996, 386.27299999999997,
          412.84299999999996, 371.679, 423.59299999999996)
      ..cubicTo(357.02299999999997, 434.31199999999995, 339.491,
          442.29599999999994, 319.116, 447.56199999999995)
      ..cubicTo(310.21, 449.81199999999995, 300.882, 451.37499999999994,
          291.413, 452.65599999999995)
      ..lineTo(291.413, 512)
      ..lineTo(220.585, 512)
      ..lineTo(220.585, 453.844)
      ..cubicTo(200.413, 452.141, 181.132, 449, 162.976, 444)
      ..cubicTo(135.257, 436.406, 98.96, 405.75, 98.96, 405.75)
      ..cubicTo(95.851, 403.937, 93.788, 400.75, 93.351, 397.219)
      ..cubicTo(92.898, 393.656, 94.117, 390.063, 96.664, 387.531)
      ..lineTo(132.148, 352.031)
      ..cubicTo(135.976, 348.25, 141.914, 347.531, 146.507, 350.343)
      ..cubicTo(146.507, 350.343, 173.07, 373.406, 193.195, 378.906)
      ..cubicTo(213.32, 384.375, 233.289, 387.125, 253.21099999999998, 387.125)
      ..cubicTo(278.336, 387.125, 299.102, 382.687, 315.57, 373.812)
      ..cubicTo(332.07, 364.874, 340.289, 351.062, 340.289, 332.187)
      ..cubicTo(340.289, 318.593, 336.258, 307.874, 328.11699999999996, 299.999)
      ..cubicTo(320.008, 292.18600000000004, 306.289, 287.26500000000004,
          286.929, 285.108)
      ..lineTo(223.36599999999999, 279.639)
      ..cubicTo(185.725, 275.967, 156.694, 265.467, 136.303, 248.264)
      ..cubicTo(115.85, 230.99800000000002, 105.69399999999999, 204.811,
          105.69399999999999, 169.811)
      ..cubicTo(105.69399999999999, 150.436, 109.6, 133.186, 117.46,
          118.01400000000001)
      ..cubicTo(125.335, 102.84200000000001, 136.023, 90.03, 149.632,
          79.59200000000001)
      ..cubicTo(163.226, 69.12300000000002, 179.07, 61.27900000000001, 197.101,
          56.061000000000014)
      ..cubicTo(204.648, 53.87300000000001, 212.554, 52.436000000000014,
          220.585, 51.12300000000001)
      ..lineTo(220.585, 0)
      ..lineTo(291.413, 0)
      ..lineTo(291.413, 50.094)
      ..cubicTo(307.944, 51.719, 323.67900000000003, 54.375, 338.319,
          58.407000000000004)
      ..cubicTo(363.163, 65.188, 389.257, 85.595, 389.257, 85.595)
      ..cubicTo(392.523, 87.283, 394.741, 90.47, 395.30400000000003, 94.095)
      ..cubicTo(395.867, 97.783, 394.663, 101.408, 392.08500000000004, 104.064)
      ..lineTo(358.80400000000003, 137.845)
      ..cubicTo(355.257, 141.439, 349.773, 142.376, 345.24100000000004, 140.033)
      ..cubicTo(345.24100000000004, 140.033, 325.53800000000007,
          126.00199999999998, 308.50700000000006, 121.564)
      ..cubicTo(291.49100000000004, 117.12599999999999, 273.61600000000004,
          114.87599999999999, 254.78800000000007, 114.87599999999999)
      ..cubicTo(230.17900000000006, 114.87599999999999, 211.99100000000007,
          119.59499999999998, 200.25700000000006, 128.98499999999999)
      ..cubicTo(188.47600000000006, 138.438, 182.63200000000006, 150.719,
          182.63200000000006, 165.85999999999999)
      ..cubicTo(182.63200000000006, 179.50099999999998, 186.74100000000007,
          189.938, 195.16300000000007, 197.219)
      ..cubicTo(203.52200000000008, 204.563, 217.63200000000006, 209.328,
          237.52200000000008, 211.344)
      ..lineTo(293.2250000000001, 216.094)
      ..cubicTo(334.52200000000005, 219.75, 365.78800000000007, 230.719,
          386.95900000000006, 249.016)
      ..cubicTo(408.16200000000003, 267.344, 418.74000000000007, 294.032,
          418.74000000000007, 329.032)
      ..cubicTo(418.742, 350.016, 414.554, 368.281, 406.195, 383.984)
      ..close();
    
  }

  Path _buildHealthCrossPath() {
    return Path()
      ..moveTo(25, 0)
      ..lineTo(25, 25)
      ..lineTo(0, 25)
      ..lineTo(0, 50)
      ..lineTo(25, 50)
      ..lineTo(25, 75)
      ..lineTo(50, 75)
      ..lineTo(50, 50)
      ..lineTo(75, 50)
      ..lineTo(75, 25)
      ..lineTo(50, 25)
      ..lineTo(50, 0)
      ..close();
  }

  Path _buildSpeechBubblePath() {
    return Path()
      ..moveTo(50, 0)
      ..quadraticBezierTo(0, 0, 0, 37.5)
      ..quadraticBezierTo(0, 75, 25, 75)
      ..quadraticBezierTo(25, 95, 5, 95)
      ..quadraticBezierTo(35, 95, 40, 75)
      ..quadraticBezierTo(100, 75, 100, 37.5)
      ..quadraticBezierTo(100, 0, 50, 0)
      ..close();
  }
}

class _AnimatedLiquidCustomProgressIndicator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() =>
      _AnimatedLiquidCustomProgressIndicatorState();
}

class _AnimatedLiquidCustomProgressIndicatorState
    extends State<_AnimatedLiquidCustomProgressIndicator>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this,
      duration: Duration(seconds: 10),
    );

    _animationController.addListener(() => setState(() {}));
    _animationController.repeat();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final percentage = _animationController.value * 100;
    return Center(
      child: LiquidCustomProgressIndicator(
        value: _animationController.value,
        direction: Axis.vertical,
        backgroundColor: Colors.white,
        valueColor: AlwaysStoppedAnimation(Colors.green),
        shapePath: _buildHeartPath(),
        center: Text(
          "${percentage.toStringAsFixed(0)}%",
          style: TextStyle(
            color: Colors.lightGreenAccent,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Path _buildHeartPath() {
    return Path()
      ..moveTo(55, 15)
      ..cubicTo(55, 12, 50, 0, 30, 0)
      ..cubicTo(0, 0, 0, 37.5, 0, 37.5)
      ..cubicTo(0, 55, 20, 77, 55, 95)
      ..cubicTo(90, 77, 110, 55, 110, 37.5)
      ..cubicTo(110, 37.5, 110, 0, 80, 0)
      ..cubicTo(65, 0, 55, 12, 55, 15)
      ..close();
  }
}

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Liquid Progress Indicator Examples"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(28.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            TextButton(
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.grey.shade300),
              ),
              onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => LiquidCustomProgressIndicatorPage(),
                ),
              ),
              child: const Text("Custom"),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:liquid_progress_indicator_v2/liquid_progress_indicator.dart';
import 'package:polygon/polygon.dart';

class LiquidCustomProgressIndicatorPage extends StatelessWidget {
  const LiquidCustomProgressIndicatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
          left: 10.0, top: 50.0, right: 10.0, bottom: 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
              width: 500,
              child: Card(
                  child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    buildLiquidIcon(AlwaysStoppedAnimation(Colors.green),
                        buildDollarPath(), 0.9),
                    buildLiquidIcon(AlwaysStoppedAnimation(Colors.yellow),
                        _buildThunderPath(), 0.9),
                    buildLiquidIcon(AlwaysStoppedAnimation(Colors.red),
                        _buildHeartPath(), 0.9),
                    buildLiquidIcon(AlwaysStoppedAnimation(Colors.blue),
                        _buildBrainPath(), 0.9),
                  ],
                ),
              )))
        ],
      ),
    );
  }

  SizedBox buildLiquidIcon(
      Animation<Color> color, Path path, double valueToShow) {
    return SizedBox(
        width: 50,
        height: 50,
        child: FittedBox(
            child: LiquidCustomProgressIndicator(
                backgroundColor: Colors.grey,
                direction: Axis.vertical,
                value: valueToShow,
                valueColor: color,
                shapePath: path)));
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

  Path _buildBrainPath() {
    return Path()
      ..moveTo(208, 0)
      ..cubicTo(178.1, 0, 153.3, 20.5, 146.2, 48.2)
      ..cubicTo(145.39999999999998, 48.2, 144.79999999999998, 48, 144, 48)
      ..cubicTo(108.7, 48, 80, 76.7, 80, 112)
      ..cubicTo(80, 116.8, 80.6, 121.5, 81.7, 126)
      ..cubicTo(52.5, 138, 32, 166.6, 32, 200)
      ..cubicTo(32, 212.6, 35.2, 224.3, 40.3, 234.9)
      ..cubicTo(16.3, 248.7, 0, 274.3, 0, 304)
      ..cubicTo(0, 337.3, 20.4, 365.9, 49.4, 377.9)
      ..cubicTo(48.5, 382.5, 48, 387.2, 48, 392)
      ..cubicTo(48, 431.8, 80.2, 464, 120, 464)
      ..cubicTo(124.1, 464, 128.1, 463.5, 132, 462.8)
      ..cubicTo(141.6, 491.3, 168.2, 512, 200, 512)
      ..cubicTo(239.8, 512, 272, 479.8, 272, 440)
      ..lineTo(272, 64)
      ..cubicTo(272, 28.700000000000003, 243.3, 0, 208, 0)
      ..close()
      ..moveTo(576, 304)
      ..cubicTo(576, 274.3, 559.7, 248.7, 535.7, 234.9)
      ..cubicTo(540.9000000000001, 224.3, 544, 212.6, 544, 200)
      ..cubicTo(544, 166.6, 523.5, 138, 494.3, 126)
      ..cubicTo(495.3, 121.5, 496, 116.8, 496, 112)
      ..cubicTo(496, 76.7, 467.3, 48, 432, 48)
      ..cubicTo(431.2, 48, 430.5, 48.2, 429.8, 48.2)
      ..cubicTo(422.7, 20.5, 397.9, 0, 368, 0)
      ..cubicTo(332.7, 0, 304, 28.6, 304, 64)
      ..lineTo(304, 440)
      ..cubicTo(304, 479.8, 336.2, 512, 376, 512)
      ..cubicTo(407.8, 512, 434.4, 491.3, 444, 462.8)
      ..cubicTo(447.9, 463.5, 451.9, 464, 456, 464)
      ..cubicTo(495.8, 464, 528, 431.8, 528, 392)
      ..cubicTo(528, 387.2, 527.5, 382.5, 526.6, 377.9)
      ..cubicTo(555.6, 365.9, 576, 337.29999999999995, 576, 304)
      ..close();
  }

  Path _buildThunderPath() {
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
}

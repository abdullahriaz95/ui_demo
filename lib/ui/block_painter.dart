import 'package:flutter/material.dart';
import 'dart:ui' as ui;

class BlockPainter extends CustomPainter {
  var dateTime = DateTime.now();
  BuildContext context;
  bool extraLeft;
  bool extraRight;
  int showings;
  BlockPainter(this.context,
      {required this.extraLeft,
      required this.extraRight,
      required this.showings});

  @override
  void paint(Canvas canvas, Size size) {
    var centerX = size.width / 2;
    var centerY = size.height / 2;

    var sideAddition = 20;
    var topCoverSpace = 30;
    double spaceForEachBlock;
    if (extraLeft || extraRight) {
      spaceForEachBlock = size.width / 2;
    } else {
      spaceForEachBlock = size.width / 3;
    }

    var b1Point1X = centerX - (spaceForEachBlock / 2);
    var b1Point1Y = (size.height);

    var b1Point2X = centerX - (spaceForEachBlock / 2) - sideAddition;
    var b1Point2Y = 0.0 + topCoverSpace;

    var b1Point3X = centerX + (spaceForEachBlock / 2) + sideAddition;
    var b1Point3Y = 0.0 + topCoverSpace;

    var b1Point4X = centerX + (spaceForEachBlock / 2);
    var b1Point4Y = size.height;

    var b1TopCoverPoint1X = b1Point2X;
    var b1TopCoverPoint1y = b1Point2Y;

    var b1TopCoverPoint2X = centerX - (spaceForEachBlock / 2);
    var b1TopCoverPoint2y = 0.0;

    var b1TopCoverPoint3X = centerX + (spaceForEachBlock / 2);
    var b1TopCoverPoint3y = 0.0;

    var b1TopCoverPoint4X = centerX + (spaceForEachBlock / 2) + sideAddition;
    var b1TopCoverPoint4y = 0.0 + topCoverSpace;

    var textHeadingX = centerX -
        (extraLeft
            ? 45
            : extraRight
                ? 15
                : 30);
    var textHeadingy = centerY - 30;

    final paint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(centerX, 0),
        Offset(centerX, size.height),
        [
          Theme.of(context).colorScheme.secondary,
          Theme.of(context).scaffoldBackgroundColor,
        ],
      );

    final topCoverPaint = Paint()
      ..shader = ui.Gradient.linear(
        Offset(centerX, size.height),
        Offset(centerX, 0),
        [
          Theme.of(context).scaffoldBackgroundColor,
          Theme.of(context).colorScheme.secondary.withOpacity(0.5),
        ],
      );

    final rectangle1 = Path()
      ..moveTo(b1Point1X, b1Point1Y)
      ..lineTo(b1Point2X, b1Point2Y)
      ..lineTo(b1Point3X, b1Point3Y)
      ..lineTo(b1Point4X, b1Point4Y)
      ..close();

    final rectangle2 = Path()
      ..moveTo(b1TopCoverPoint1X, b1TopCoverPoint1y)
      ..lineTo(b1TopCoverPoint2X, b1TopCoverPoint2y)
      ..lineTo(b1TopCoverPoint3X, b1TopCoverPoint3y)
      ..lineTo(b1TopCoverPoint4X, b1TopCoverPoint4y)
      ..close();

    canvas.drawPath(rectangle1, paint);
    canvas.drawPath(rectangle2, topCoverPaint);

    TextSpan span = TextSpan(
        style: Theme.of(context).textTheme.headline3,
        text: showings.toString());
    TextPainter tp = TextPainter(text: span, textDirection: TextDirection.ltr);
    tp.layout();
    tp.paint(canvas, Offset(textHeadingX, textHeadingy));

    TextSpan span1 = TextSpan(
        style: Theme.of(context).textTheme.bodyText1, text: 'Showings');
    TextPainter tp1 =
        TextPainter(text: span1, textDirection: TextDirection.ltr);
    tp1.layout();
    tp1.paint(canvas, Offset(textHeadingX - 5, textHeadingy + 50));
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

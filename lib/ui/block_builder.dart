import 'package:flutter/material.dart';

import 'block_painter.dart';

class BlockBuilder extends StatelessWidget {
  const BlockBuilder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
            height: 200,
            width: width / 2,
            child: CustomPaint(
              painter: BlockPainter(context,
                  extraLeft: true, extraRight: false, showings: 34),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            height: 170,
            width: width / 2,
            child: CustomPaint(
              painter: BlockPainter(context,
                  extraLeft: false, extraRight: true, showings: 27),
            ),
          ),
        ),
        SizedBox(
          height: 250,
          width: width,
          child: CustomPaint(
            painter: BlockPainter(context,
                extraLeft: false, extraRight: false, showings: 38),
          ),
        ),
      ],
    );
  }
}

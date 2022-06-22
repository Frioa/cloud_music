import 'dart:math';

import 'package:cloud_music/common/common.dart';
import 'package:cloud_music/widget/app/app.dart';
import 'package:flutter/material.dart';

enum ArrowType {
  down,
  up,
  left,
  right,
}

class ArrowWidget extends StatelessWidget {
  final ArrowType type;
  final double? size;

  const ArrowWidget({
    Key? key,
    this.type = ArrowType.down,
    this.size,
  }) : super(key: key);

  double get angle {
    switch (type) {
      case ArrowType.down:
        return 0;
      case ArrowType.up:
        return pi;
      case ArrowType.left:
        return pi / 2;
      case ArrowType.right:
        return 3 * pi / 2;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: angle,
      child: ImageWidget(Assets.icArrowDown, size: size),
    );
  }
}

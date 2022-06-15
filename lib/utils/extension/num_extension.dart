import 'package:cloud_music/common/common.dart';

extension NumExtionsions on int {
  String get tenThousandDesc {
    if (this < 10000) return '$this';

    final value = (this / 10000.0).toStringAsFixed(1);
    return '$value ${S.common.tenThousand}';
  }
}

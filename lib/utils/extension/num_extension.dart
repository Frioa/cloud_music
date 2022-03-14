import 'package:cloud_music/common/common.dart';

extension NumExtionsions on int {
  String get tenThousandDesc {
    if (this < 100000) return '$this';

    final value = this ~/ 100000;
    return '$value ${S.common.tenThousand}';
  }
}

extension DoubleExension on int {
  Duration get toSecDuration => Duration(seconds: this ~/ 1000, milliseconds: this % 1000);
}
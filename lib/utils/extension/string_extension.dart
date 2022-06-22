extension StringExtionsions on String {
  String get phoneDesensitization {
    if (length != 11) return this;

    return replaceRange(3, 7, '****');
  }
}

extension NumberParser on String {
  int? toIntOrNull() => int.tryParse(this);
}

///Convert to Celcius temps
void main() {
  double farenheitTemp = 97;
  double celciusTemp =
      double.parse(((farenheitTemp - 32) / 1.8).toStringAsFixed(1));
  print('Temperature in Celcius is $celciusTemp C');
}

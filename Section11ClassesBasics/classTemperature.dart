class Temparature {
  Temparature.celsius(this.celsius);
  Temparature.farhenheit(double farhenheit) : celsius = (farhenheit - 32) / 1.8;

  double celsius;
  double get farhenheit => celsius * 1.8 + 32;
  set farhenheit(double farhenheit) => celsius = (farhenheit - 32) / 1.8;
}

void main() {
  final temp1 = Temparature.celsius(32);
  final temp2 = Temparature.farhenheit(90);
  print(temp1.celsius);
  temp1.celsius = 35;
  print(temp2.farhenheit);
  temp1.farhenheit = 92;
  print(temp1.farhenheit);
}

class Fraction {
  Fraction(this.numerator, this.denominator) {
    if (denominator == 0) {
      throw UnsupportedError('Division By Zero Error');
      // throw Exception('Error denominator 0');
    }
  }
  final int numerator;
  final int denominator;

  double get result => numerator / denominator;
}

void testFraction() {
  try {
    final f = Fraction(3, 0);
    print(f.result);
  } on UnsupportedError catch (e) {
    print(e);
  } on Exception catch (e) {
    rethrow;
  } finally {
    print('Testing Completed!');
  }
}

void main() {
  testFraction();
  print('done');
}

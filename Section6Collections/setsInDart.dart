void main() {
  var euCountries = {'UK', 'Italy', 'Russia'};
  var asianCountries = {'India', 'China', 'Russia'};
  euCountries.add('Germany');
  euCountries.add(
      'Germany'); // sets only contain unique items.. if duplicate, its removed from that set
  print(euCountries);

  print('union ${euCountries.union(asianCountries)}');
  print('intersection ${euCountries.intersection(asianCountries)}');
  print('difference ${euCountries.difference(asianCountries)}');

  const a = {1, 3};
  const b = {3, 5};
  var c = a.union(b).difference(a.intersection(b));
  print(c);
  var sum = 0;

  for (var number in c) {
    sum += number;
  }
  print('Sum is $sum');
}

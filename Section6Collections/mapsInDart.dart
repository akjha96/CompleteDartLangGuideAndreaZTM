void main() {
  Map<String, dynamic> person1 = {
    'name': "Erzt",
    'age': 23,
    'height': 1.53,
  };
  var name = person1['name'] as String;
  print(name);
  person1["LikesSkating"] = true;
  var weight = person1['weight'];
  print(weight);
  // print(person1);

  for (var key in person1.keys) {
    print(person1[key].runtimeType);
  }

  for (var value in person1.values) {
    print(value);
  }

  for (var entity in person1.entries) {
    print('${entity.key}: ${entity.value}');
  }
}

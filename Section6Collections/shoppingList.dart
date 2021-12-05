void main() {
  const bananas = 5;
  const apples = 6;
  const grains = {
    'pasta': '500 g',
    'rice': '1 kg',
  };
  const addGrain = true;
  var shoppingList = {
    if (bananas > 0) 'bananas': bananas,
    if (apples > 0) 'apples': apples,
    if (addGrain) ...grains
  };
  // if (bananas > 0) {
  //   shoppingList['bananas'] = bananas;
  // }
  // if (apples > 0) {
  //   shoppingList['apples'] = apples;
  // }
  // if (addGrain) {
  //   shoppingList.addAll(grains);
  // }

  print(shoppingList);
}

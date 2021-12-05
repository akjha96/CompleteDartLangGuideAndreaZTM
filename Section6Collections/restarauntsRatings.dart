void main() {
  var restaurants = [
    {
      'name': 'Pizza Mario',
      'cuisine': 'Italian',
      'ratings': [4.5, 5.0, 3.5],
    },
    {
      'name': 'Chez Anne',
      'cuisine': 'French',
      'ratings': [2.5, 4.0, 4.5],
    },
    {
      'name': 'Navtrana',
      'cuisine': 'Indian',
      'ratings': [1.5, 3.5, 5.0],
    },
  ];

  appendAverage(restaurants);
}

List appendAverage(List restaurants) {
  for (var restaurant in restaurants) {
    List<double> ratings = restaurant['ratings'];
    double totalRating = 0;
    for (double rating in ratings) {
      totalRating += rating;
    }
    restaurant['avgRating'] =
        double.parse((totalRating / ratings.length).toStringAsFixed(2));
    print(restaurant);
  }
  return restaurants;
}

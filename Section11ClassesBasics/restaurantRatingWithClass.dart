class Restaurant {
  const Restaurant(
      {required this.name, required this.cuisine, required this.ratings});
  final String name;
  final String cuisine;
  final List<double> ratings;

  int get noOfRatings => ratings.length;

  String averageRating() {
    if (!ratings.isEmpty) {
      return ((ratings.reduce((totalRating, rating) => totalRating + rating)) /
              noOfRatings)
          .toStringAsFixed(2);
    } else
      return '0.0';
  }
}

void main() {
  final chineseRestaurant = Restaurant(
      name: 'WoKong Restaurant',
      cuisine: 'Chinese',
      ratings: [2.5, 3.5, 2.9, 3.1, 2.2]);
  final italianRestaurant = Restaurant(
      name: 'Italian Restaurant',
      cuisine: 'Italian',
      ratings: [3.5, 3.5, 2.1, 4.7]);
  final indianRestaurant = Restaurant(
      name: 'Desi Restaurant',
      cuisine: 'Indian',
      ratings: [4.5, 5.0, 4.1, 3.2, 2.9, 5.0]);
  final computedRestaurant = Restaurant(
      name: 'Computed Restaurant', cuisine: 'Solicon chips', ratings: []);

  print(
      '${chineseRestaurant.name} has ${chineseRestaurant.noOfRatings} ratings with average of ${chineseRestaurant.averageRating()}');
  print(
      '${italianRestaurant.name} has ${italianRestaurant.noOfRatings} ratings with average of ${italianRestaurant.averageRating()}');
  print(
      '${indianRestaurant.name} has ${indianRestaurant.noOfRatings} ratings with average of ${indianRestaurant.averageRating()}');
  print(
      '${computedRestaurant.name} has ${computedRestaurant.noOfRatings} ratings with average of ${computedRestaurant.averageRating()}');
}

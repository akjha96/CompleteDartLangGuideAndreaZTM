void main() {
  bool addGrey = true;
  bool addWhite = true;
  var extracolors = {'green': 'greenLeaf', 'brown': 'brownWood'};
  final colors = {
    'blue': 'blueSky',
    'yellow': 'yellowSun',
    if (addGrey) 'grey': 'greySmoke',
    if (addWhite) 'white': 'whiteKnight',
    for (var color in extracolors.keys) color: extracolors[color],
  };
  print(colors);
}

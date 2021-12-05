void main() {
  bool addGrey = true;
  bool addWhite = true;
  bool addExtraColors = true;
  var extracolors = {'green': 'greenLeaf', 'brown': 'brownWood'};
  final colors = {
    'blue': 'blueSky',
    'yellow': 'yellowSun',
    if (addGrey) 'grey': 'greySmoke',
    if (addWhite) 'white': 'whiteKnight',
    if (addExtraColors) ...extracolors,
  };
  print(colors);
}

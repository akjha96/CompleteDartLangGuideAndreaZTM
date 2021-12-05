void main() {
  bool addGrey = true;
  bool addWhite = true;
  final colors = {
    'blue': 'blueSky',
    'yellow': 'yellowSun',
    if (addGrey) 'grey': 'greySmoke',
    if (addWhite) 'white': 'whiteKnight'
  };
  print(colors);
}

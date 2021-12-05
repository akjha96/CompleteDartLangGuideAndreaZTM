enum Medal {
  gold,
  silver,
  bronze,
  noMedal,
}

void main() {
  Medal medal = Medal.bronze;
  switch (medal) {
    case Medal.gold:
      print('You won $medal! You received 30 pts!');
      break;
    case Medal.silver:
      print('You won $medal! You received 20 pts!');
      break;
    case Medal.bronze:
      print('You won $medal! You received 10 pts!');
      break;
    case Medal.noMedal:
      print('You did not win any medal! You received 10 pts!');
      break;
    default:
      print('You need to play the game atleast once!');
  }
}

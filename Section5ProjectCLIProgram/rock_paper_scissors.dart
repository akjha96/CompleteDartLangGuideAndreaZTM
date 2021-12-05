import 'dart:io';

import 'dart:math';

enum Moves { rock, paper, scissor }
void main() {
  while (true) {
    var playerChoice;
    print('Rock, Paper or Scissor (r/p/s)');
    final playerInput = stdin.readLineSync();

    Random random = new Random();
    final aiChoice = Moves.values[random.nextInt(3)];
    if (playerInput == 'r' || playerInput == 'p' || playerInput == 's') {
      if (playerInput == 'r') {
        playerChoice = Moves.rock;
      } else if (playerInput == 'p') {
        playerChoice = Moves.paper;
      } else {
        playerChoice = Moves.scissor;
      }
    }

    if ((playerChoice == Moves.rock && aiChoice == Moves.paper) ||
        (playerChoice == Moves.paper && aiChoice == Moves.scissor) ||
        (playerChoice == Moves.scissor && aiChoice == Moves.rock)) {
      print('Your Choice: Rock \nAI Choice: Paper\nYou Lose!\n');
    } else if ((playerChoice == Moves.rock && aiChoice == Moves.scissor) ||
        (playerChoice == Moves.paper && aiChoice == Moves.rock) ||
        (playerChoice == Moves.scissor && aiChoice == Moves.paper)) {
      print('Your Choice: Rock \nAI Choice: Scissor\nYou Win!\n');
    } else if ((playerChoice == Moves.rock && aiChoice == Moves.rock) ||
        (playerChoice == Moves.paper && aiChoice == Moves.paper) ||
        (playerChoice == Moves.scissor && aiChoice == Moves.scissor)) {
      print('Your Choice: Rock \nAI Choice: Rock\nIt\'s a Draw!\n');
    } else if (playerInput == 'q') {
      print('Thanks for playing! Bye Bye now!!\n');
      break;
    } else {
      print('Invalid Input! Please try again...\n');
    }
  }
}

/*
  Exercise 9
  Generate a random number between 1 and 100. Ask the user to guess the number, then tell them whether they guessed too low, too high, or exactly right.
*/

import 'dart:io';
import 'dart:math';
void main(){
  int random = Random().nextInt(101);
  int yourTry =0;
    print("Guess a Number between 0 and 100 ! write (000) to exit");
  while (true) {
    yourTry++;
    var userNumber = int.parse(stdin.readLineSync()!);
    if (userNumber == 000) {
      print("Thanks for playing! ");
      break;
    } else if (userNumber > 100 || userNumber < 0) {
      print("please enter number between 0 an 100 !write (000) to exit");
      continue;
    }else if(userNumber == random){
      print("Bingo! You tried $yourTry times !write (000) to exit");
    } else if (userNumber > random) {
      print("You are higher! write (000) to exit");
    } else if (userNumber < random) {
      print("you are lower !write (000) to exit");
    }
  }
}

import 'dart:math';
import 'dart:io';
// import math and input package

main() {
  // Welcome to the user and tell him to guess the number;
  Welcome();
  // generation  the computer random value and change it to int value
  Random random = Random();
  int ComputerRandom = random.nextInt(10);
  //generation container to put in the user value
  int UserInput;
  //stay untell the user guess the number
  do {

    String InputCansol = stdin.readLineSync();
    UserInput = int.parse(InputCansol);
    TheGuesses(UserInput, ComputerRandom);
  } while (UserInput != ComputerRandom);
}

void Welcome() {
  print('welcome in our toll');
  print('can you guess the number');
  return null;
}

TheGuesses(int UserInput, int ComputerRandom) {
  if (UserInput > ComputerRandom) {
    return {print('too high')};
  } else if (UserInput < ComputerRandom) {
    return {print('too low')};
  } else {
    return {print('You guessed Thank you')};
  }
}

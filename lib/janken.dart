import 'dart:io';
import 'dart:math';

import 'src/janken_move.dart' show JankenMove;
import 'src/janken_moves.dart';

const helpInfo = '''
Press
  r for rock
  p for paper
  s for scissors
  q to quit the game
  h for help
''';

void start() {
  var keepPlaying = true;
  do {
    JankenMove? userMove;
    print('Rock, paper or scissors?');
    var input = stdin.readLineSync();
    switch (input) {
      case 'h':
        print(helpInfo);
      case 'q':
        keepPlaying = false;
      case 'r' || 'p' || 's':
        userMove = JankenMove(JankenMoves.values
            .firstWhere((element) => element.name[0] == input));
      default:
        print('Invalid option. Type \'h\' for valid options.');
    }
    if (userMove != null) {
      final cpuMove = JankenMove(
          JankenMoves.values[Random().nextInt(JankenMoves.values.length - 1)]);
      print('You played: ${userMove.move.name}');
      print('AI played: ${cpuMove.move.name}');
      print(userMove.versus(cpuMove).message);
    }
  } while (keepPlaying);
  print('Thank you for playing');
}

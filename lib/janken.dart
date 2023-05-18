import 'dart:io';
import 'dart:math';

import 'src/janken_move.dart' show JankenMove;
import 'src/janken_moves.dart';

const helpInfo =
    '''
Press
  rk for rock
  pr for paper
  ss for scissors
  ld for lizard
  sk for spock
  q to quit the game
  h for help
''';

void start() {
  var keepPlaying = true;
  final randomGenerator = Random();
  do {
    JankenMove? userMove;
    print('Rock, paper, scissors, lizard or spock?');
    final input = stdin.readLineSync();
    switch (input?.toUpperCase()) {
      case 'H':
        print(helpInfo);
      case 'Q':
        keepPlaying = false;
      case 'RK' || 'PR' || 'SS' || 'LD' || 'SK':
        userMove = JankenMove(JankenMoves.values.firstWhere((element) =>
            '${element.name[0]}${element.name[element.name.length - 1]}' ==
            input));
      default:
        print('Invalid option. Type \'h\' for valid options.');
    }
    if (userMove != null) {
      final cpuMove = JankenMove(
          JankenMoves.values[randomGenerator.nextInt(JankenMoves.values.length - 1)]);
      print('You played: ${userMove.move.name}');
      print('AI played: ${cpuMove.move.name}');
      print(userMove.versus(cpuMove).message);
    }
  } while (keepPlaying);
  print('Thank you for playing');
}

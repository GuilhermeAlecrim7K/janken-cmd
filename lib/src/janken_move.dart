import 'janken_moves.dart';
import 'janken_result.dart';

sealed class JankenMove {
  factory JankenMove(JankenMoves move) {
    // switch (move) {
    //   case JankenMoves.rock:
    //     return Rock();
    //   case JankenMoves.paper:
    //     return Paper();
    //   case JankenMoves.scissors:
    //     return Scissors();
    // }
    return switch (move) {
      JankenMoves.rock => Rock(),
      JankenMoves.paper => Paper(),
      JankenMoves.scissors => Scissors(),
    };
  }

  JankenResult versus(JankenMove move);
  JankenMoves get move;
}

class Rock implements JankenMove {
  @override
  JankenResult versus(JankenMove move) {
    return switch (move) {
      Rock _ => JankenResult.draw,
      Paper _ => JankenResult.loss,
      Scissors _ => JankenResult.victory,
    };
  }

  @override
  JankenMoves get move => JankenMoves.rock;
}

class Paper implements JankenMove {
  @override
  JankenResult versus(JankenMove move) {
    return switch (move) {
      Rock _ => JankenResult.victory,
      Paper _ => JankenResult.draw,
      Scissors _ => JankenResult.loss
    };
  }

  @override
  JankenMoves get move => JankenMoves.paper;
}

class Scissors implements JankenMove {
  @override
  JankenResult versus(JankenMove move) {
    return switch (move) {
      Rock _ => JankenResult.loss,
      Paper _ => JankenResult.victory,
      Scissors _ => JankenResult.draw,
    };
  }

  @override
  JankenMoves get move => JankenMoves.scissors;
}

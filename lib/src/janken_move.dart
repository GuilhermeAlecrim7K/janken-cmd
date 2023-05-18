import 'janken_moves.dart';
import 'janken_result.dart';

sealed class JankenMove {
  factory JankenMove(JankenMoves move) {
    return switch (move) {
      JankenMoves.rock => Rock(),
      JankenMoves.paper => Paper(),
      JankenMoves.scissors => Scissors(),
      JankenMoves.lizard => Lizard(),
      JankenMoves.spock => Spock(),
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
      Lizard _ => JankenResult.victory,
      Spock _ => JankenResult.loss,
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
      Scissors _ => JankenResult.loss,
      Lizard _ => JankenResult.loss,
      Spock _ => JankenResult.victory,
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
      Lizard _ => JankenResult.victory,
      Spock _ => JankenResult.loss,
    };
  }

  @override
  JankenMoves get move => JankenMoves.scissors;
}

class Lizard implements JankenMove {
  @override
  JankenMoves get move => JankenMoves.lizard;

  @override
  JankenResult versus(JankenMove move) {
    return switch (move) {
      Rock _ => JankenResult.loss,
      Paper _ => JankenResult.victory,
      Scissors _ => JankenResult.loss,
      Lizard _ => JankenResult.draw,
      Spock _ => JankenResult.victory,
    };
  }
}

class Spock implements JankenMove {
  @override
  JankenMoves get move => JankenMoves.spock;

  @override
  JankenResult versus(JankenMove move) {
    return switch (move) {
      Rock _ => JankenResult.victory,
      Paper _ => JankenResult.loss,
      Scissors _ => JankenResult.victory,
      Lizard _ => JankenResult.loss,
      Spock _ => JankenResult.draw,
    };
  }
}

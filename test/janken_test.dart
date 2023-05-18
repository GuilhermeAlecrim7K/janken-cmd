import 'package:janken/src/janken_move.dart';
import 'package:janken/src/janken_moves.dart';
import 'package:janken/src/janken_result.dart';
import 'package:test/test.dart';

void main() {
  group('rock', () {
    test('vs. rock', () {
      expect(JankenMove(JankenMoves.rock).versus(JankenMove(JankenMoves.rock)),
          JankenResult.draw);
    });
    test('vs. paper', () {
      expect(JankenMove(JankenMoves.rock).versus(JankenMove(JankenMoves.paper)),
          JankenResult.loss);
    });
    test('vs. scissors', () {
      expect(
          JankenMove(JankenMoves.rock).versus(JankenMove(JankenMoves.scissors)),
          JankenResult.victory);
    });
    test('vs. lizard', () {
      expect(
          JankenMove(JankenMoves.rock).versus(JankenMove(JankenMoves.lizard)),
          JankenResult.victory);
    });
    test('vs. spock', () {
      expect(JankenMove(JankenMoves.rock).versus(JankenMove(JankenMoves.spock)),
          JankenResult.loss);
    });
  });

  group('paper', () {
    test('vs. rock', () {
      expect(JankenMove(JankenMoves.paper).versus(JankenMove(JankenMoves.rock)),
          JankenResult.victory);
    });
    test('vs. paper', () {
      expect(
          JankenMove(JankenMoves.paper).versus(JankenMove(JankenMoves.paper)),
          JankenResult.draw);
    });
    test('vs. scissors', () {
      expect(
          JankenMove(JankenMoves.paper)
              .versus(JankenMove(JankenMoves.scissors)),
          JankenResult.loss);
    });
    test('vs. lizard', () {
      expect(
          JankenMove(JankenMoves.paper).versus(JankenMove(JankenMoves.lizard)),
          JankenResult.loss);
    });
    test('vs. spock', () {
      expect(
          JankenMove(JankenMoves.paper).versus(JankenMove(JankenMoves.spock)),
          JankenResult.victory);
    });
  });

  group('scissors', () {
    test('vs. rock', () {
      expect(
          JankenMove(JankenMoves.scissors).versus(JankenMove(JankenMoves.rock)),
          JankenResult.loss);
    });
    test('vs. paper', () {
      expect(
          JankenMove(JankenMoves.scissors)
              .versus(JankenMove(JankenMoves.paper)),
          JankenResult.victory);
    });
    test('vs. scissors', () {
      expect(
          JankenMove(JankenMoves.scissors)
              .versus(JankenMove(JankenMoves.scissors)),
          JankenResult.draw);
    });
    test('vs. lizard', () {
      expect(
          JankenMove(JankenMoves.scissors)
              .versus(JankenMove(JankenMoves.lizard)),
          JankenResult.victory);
    });
    test('vs. spock', () {
      expect(
          JankenMove(JankenMoves.scissors)
              .versus(JankenMove(JankenMoves.spock)),
          JankenResult.loss);
    });
  });

  group('lizard', () {
    test('vs. rock', () {
      expect(
          JankenMove(JankenMoves.lizard).versus(JankenMove(JankenMoves.rock)),
          JankenResult.loss);
    });
    test('vs. paper', () {
      expect(
          JankenMove(JankenMoves.lizard).versus(JankenMove(JankenMoves.paper)),
          JankenResult.victory);
    });
    test('vs. scissors', () {
      expect(
          JankenMove(JankenMoves.lizard)
              .versus(JankenMove(JankenMoves.scissors)),
          JankenResult.loss);
    });
    test('vs. lizard', () {
      expect(
          JankenMove(JankenMoves.lizard).versus(JankenMove(JankenMoves.lizard)),
          JankenResult.draw);
    });
    test('vs. spock', () {
      expect(
          JankenMove(JankenMoves.lizard).versus(JankenMove(JankenMoves.spock)),
          JankenResult.victory);
    });
  });
  group('spock', () {
    test('vs. rock', () {
      expect(
          JankenMove(JankenMoves.spock).versus(JankenMove(JankenMoves.rock)),
          JankenResult.victory);
    });
    test('vs. paper', () {
      expect(
          JankenMove(JankenMoves.spock).versus(JankenMove(JankenMoves.paper)),
          JankenResult.loss);
    });
    test('vs. scissors', () {
      expect(
          JankenMove(JankenMoves.spock)
              .versus(JankenMove(JankenMoves.scissors)),
          JankenResult.victory);
    });
    test('vs. lizard', () {
      expect(
          JankenMove(JankenMoves.spock).versus(JankenMove(JankenMoves.lizard)),
          JankenResult.loss);
    });
    test('vs. spock', () {
      expect(
          JankenMove(JankenMoves.spock).versus(JankenMove(JankenMoves.spock)),
          JankenResult.draw);
    });
  });
}

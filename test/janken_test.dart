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
  });
}

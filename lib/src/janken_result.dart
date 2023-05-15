enum JankenResult {
  victory(message: 'You win'),
  loss(message: 'You lose'),
  draw(message: 'It\'s a draw');

  const JankenResult({required this.message});

  final String message;
}

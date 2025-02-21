import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;
  int _score = 0; // Biến để lưu điểm số

  final List<Question> _questionBank = [
    Question(questionText: 'Flutter là framework của Google.', answer: true),
    Question(
        questionText: 'Dart là ngôn ngữ lập trình của Facebook.',
        answer: false),
    Question(
        questionText: 'Flutter có thể build ứng dụng iOS và Android.',
        answer: true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].answer;
  }

  bool isFinished() {
    return _questionNumber >= _questionBank.length - 1;
  }

  void reset() {
    _questionNumber = 0;
    _score = 0; // Reset điểm số khi bắt đầu lại
  }

  void increaseScore() {
    _score++;
  }

  int getScore() {
    return _score;
  }
}

QuizBrain quizBrain = QuizBrain();

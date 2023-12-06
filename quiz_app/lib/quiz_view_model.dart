import 'package:flutter/material.dart';
import 'package:quiz_app/quiz_model.dart';
import 'package:quiz_app/quiz_service.dart';

class QuizViewModel extends ChangeNotifier {
  List<QuizModel> _quizList = [];
  bool _loading = false;
  bool isAwait = false;
  bool isChecked = false;
  int currentQuestion = 0;
  int option = 0;
  int score = 0;
  int num = 0;
  int correct = 0;
  List<QuizModel> get quizList => _quizList;
  bool get loading => _loading;

  setQuizList(List<QuizModel> quizList) {
    _quizList = quizList;
    notifyListeners();
  }

  setNext() {
    currentQuestion++;
    notifyListeners();
  }

  setLoading(bool loading) async {
    _loading = loading;
    notifyListeners();
  }

  checkAnswer(int Option) {
    option = Option;
    isChecked = true;
    num++;
    if (quizList[currentQuestion].options[Option].isCorrect) {
      score += 10;
      correct++;
    }
    notifyListeners();
  }

  setQuestion() async {
    setLoading(true);
    var response = await QuestionService.fetchQuestions();
    setQuizList(response);
    setLoading(false);
  }
}

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:quiz_app/quiz_model.dart';

class QuestionService {
  static Future<List<QuizModel>> fetchQuestions() async {
    try {
      var url =
          Uri.parse("https://nice-lime-hippo-wear.cyclic.app/api/v1/quiz");
      var res = await http.get(url);
      if (res.statusCode == 200) {
        List<QuizModel> questions = QuestionsFromJson(res.body);
        return questions;
      }
    } catch (e) {
      print("Error fetching questions: $e");
    }
    return [];
  }
}

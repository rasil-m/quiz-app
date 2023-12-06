import 'package:flutter/material.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/Pages/finish.dart';
import 'package:quiz_app/Pages/quiz_contents.dart';

void openQuiz(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const QuizContents(),
      ));
}

void openResult(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Finish(),
      ));
}

void openHome(BuildContext context) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Home(),
      ));
}

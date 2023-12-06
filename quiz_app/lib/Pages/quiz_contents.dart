import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/Pages/quiz_view.dart';
import 'package:quiz_app/loading.dart';
import 'package:quiz_app/quiz_view_model.dart';

class QuizContents extends StatelessWidget {
  const QuizContents({super.key});

  @override
  Widget build(BuildContext context) {
    QuizViewModel vm = context.watch<QuizViewModel>();
    return vm.loading ? const Loading() : const QuizView();
  }
}

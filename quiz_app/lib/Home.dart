import 'package:flutter/material.dart';
import 'package:quiz_app/loading.dart';
import 'package:quiz_app/navigation.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/quiz_view_model.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    QuizViewModel vm = context.watch<QuizViewModel>();
    return Scaffold(
        backgroundColor: Color(0xFF481450),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {
                  vm.setQuestion();
                  vm.currentQuestion = 0;
                  vm.isChecked = false;
                  vm.score = 0;
                  vm.num = 0;
                  vm.correct = 0;
                  openQuiz(context);
                },
                child: Center(
                  child: Image.asset(
                    "assets/start.png",
                    width: 316,
                    height: 369,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}

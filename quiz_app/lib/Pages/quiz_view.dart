import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/loading.dart';
import 'package:quiz_app/navigation.dart';
import 'package:quiz_app/quiz_view_model.dart';

class QuizView extends StatelessWidget {
  const QuizView({super.key});

  @override
  Widget build(BuildContext context) {
    QuizViewModel vm = context.watch<QuizViewModel>();
    final index = vm.currentQuestion;
    final obj = vm.quizList[index];
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF481450),
        body: Container(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          padding: const EdgeInsets.only(top: 30),
          child: Column(
            children: [
              Stack(
                children: [
                  Positioned(
                    child: Container(
                      width: 200,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFF6C2677),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 5, top: 2),
                        child: Text(
                          vm.score.toString(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    child: Container(
                      width: 100,
                      height: 20,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color(0xFFC353D6),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 0.85,
                height: MediaQuery.sizeOf(context).height * 0.70,
                // color: Colors.white,
                child: Column(
                  children: [
                    Text(
                      "${index + 1}.${obj.question}",
                      style: const TextStyle(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    InkWell(
                      onTap: vm.isChecked
                          ? null
                          : () {
                              vm.checkAnswer(0);
                            },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.80,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: vm.isChecked
                              ? (obj.options[0].isCorrect)
                                  ? Colors.green
                                  : (vm.option == 0)
                                      ? Colors.red
                                      : null
                              : null,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "1.${obj.options[0].text}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: vm.isChecked
                          ? null
                          : () {
                              vm.checkAnswer(1);
                            },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.80,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: vm.isChecked
                              ? (obj.options[1].isCorrect)
                                  ? Colors.green
                                  : (vm.option == 1)
                                      ? Colors.red
                                      : null
                              : null,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "2.${obj.options[1].text}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: vm.isChecked
                          ? null
                          : () {
                              vm.checkAnswer(2);
                            },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.80,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: vm.isChecked
                              ? (obj.options[2].isCorrect)
                                  ? Colors.green
                                  : (vm.option == 2)
                                      ? Colors.red
                                      : null
                              : null,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "3.${obj.options[2].text}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: vm.isChecked
                          ? null
                          : () {
                              vm.checkAnswer(3);
                            },
                      child: Container(
                        width: MediaQuery.sizeOf(context).width * 0.80,
                        height: 50,
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: vm.isChecked
                              ? (obj.options[3].isCorrect)
                                  ? Colors.green
                                  : (vm.option == 3)
                                      ? Colors.red
                                      : null
                              : null,
                          border: Border.all(color: Colors.white, width: 1),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "4.${obj.options[3].text}",
                              style: const TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    TextButton(
                      onPressed: () {
                        vm.isChecked = false;
                        if (index == vm.quizList.length - 1) {
                          openResult(context);
                        } else {
                          vm.setNext();
                        }
                      },
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 20, vertical: 10),
                      ),
                      child: const Text(
                        "Next",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.w400),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

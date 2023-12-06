import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/navigation.dart';
import 'package:quiz_app/quiz_view_model.dart';

class Finish extends StatelessWidget {
  const Finish({super.key});

  @override
  Widget build(BuildContext context) {
    QuizViewModel vm = context.watch<QuizViewModel>();
    final percentage = (vm.correct / vm.num) * 100;
    return Scaffold(
      backgroundColor: Color(0xFF481450),
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.sizeOf(context).width * 0.80,
              height: MediaQuery.sizeOf(context).height * 0.50,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Image.asset("assets/congrats.png"),
                  Text(
                    "${percentage}% Score",
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 22,
                        fontWeight: FontWeight.w400),
                  ),
                  const Text(
                    "Quiz completed Succssfully",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w400),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      "You attempted ${vm.num} questions and from that ${vm.correct} answer iscorrect",
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      openHome(context);
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 20, vertical: 10),
                    ),
                    child: const Text(
                      "Finish",
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

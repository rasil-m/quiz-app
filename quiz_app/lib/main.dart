import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:quiz_app/Home.dart';
import 'package:quiz_app/quiz_view_model.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => QuizViewModel()),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        home: Home(),
      ),
    );
  }
}

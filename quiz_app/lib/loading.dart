import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF481450),
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20.0),
          child: const CupertinoActivityIndicator(
            color: Colors.white,
            radius: 10,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/question_screen.dart';
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.teal,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'This Quiz is for educational purposes , to start click on Start Quiz',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              MaterialButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => QuestionScreen(0),
                    ),
                  );
                },
                child: Container(
                  width: 250.0,
                  height: 70.0,
                  child: Center(
                    child: Text(
                      'Start Quiz',
                      style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 40.0),
                    ),
                  ),
                  decoration: BoxDecoration(
                    color: Colors.orangeAccent,
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz model/quiz.dart';
int score=0;


class QuestionScreen extends StatefulWidget {
  final int index;
  QuestionScreen(this.index);

  @override
  _State createState() => _State();
}

class _State extends State<QuestionScreen> {
  Quiz myQuiz = Quiz();
  bool isCorrect = false;
  bool isWrong = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pinkAccent,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              myQuiz.quiz[widget.index].question,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Visibility(
              child: Icon(
                Icons.check,
                color: Colors.deepPurpleAccent,
                size: 60.0,
              ),
              visible: isCorrect,
              replacement: Visibility(
                child: Icon(
                  Icons.clear,
                  color: Colors.teal,
                  size: 50.0,
                ),
                visible: isWrong,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MaterialButton(
                  onPressed: (){
                    if (myQuiz.quiz[widget.index].answer == true)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                        score++;
                      });
                    else setState(() {
                      isCorrect = false;
                      isWrong = true;
                    });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'True',
                        style: TextStyle(fontSize: 40.0, color: Colors.indigo),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.lightBlueAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
                MaterialButton(
                  onPressed: (){
                    if (myQuiz.quiz[widget.index].answer == false)
                      setState(() {
                        isCorrect = true;
                        isWrong = false;
                        score++;
                      });
                    else setState(() {
                      isCorrect = false;
                      isWrong = true;
                    });
                  },
                  child: Container(
                    width: 150.0,
                    height: 70.0,
                    child: Center(
                      child: Text(
                        'False',
                        style: TextStyle(fontSize: 40.0, color: Colors.red),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                ),
              ],
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => QuestionScreen(widget.index+1),
                  ),
                );
              },
              child: Container(
                width: 200.0,
                height: 60.0,
                child: Center(
                  child: Text(
                    'Next',
                    style: TextStyle(fontSize: 40.0),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(12.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


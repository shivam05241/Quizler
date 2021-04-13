import 'package:flutter/material.dart';
import 'package:quizler/Questions.dart';

class quizPage extends StatefulWidget {
  @override
  _quizPageState createState() => _quizPageState();
}

Question quesObj = Question();

class _quizPageState extends State<quizPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  "question",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Text(
                  quesObj.getQuestion(),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      child: Text(
                        "True",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: () {
                        quesObj.checkAnswer("True");
                        setState(() {
                          quesObj.nextQuestion();
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        quesObj.checkAnswer("False");

                        setState(() {
                          quesObj.nextQuestion();
                        });
                      },
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(Colors.red),
                      ),
                      child: Text(
                        "False",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              Wrap(
                alignment: WrapAlignment.start,
                children: quesObj.getNavigator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

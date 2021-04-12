import 'package:flutter/material.dart';

class quizPage extends StatefulWidget {
  @override
  _quizPageState createState() => _quizPageState();
}

class _quizPageState extends State<quizPage> {
  int count = 0;
  var ques = [
    "question 1",
    "question 2",
    "question 3",
    "question4",
    "question5"
  ];
  var ans = ["True", "False", "True", "True", "False"];
  var score = 0;
  void pressed1() {
    if (ans[count] == "True") score++;
    setState(() {
      count++;
    });
  }

  void pressed2() {
    if (ans[count] == "False") score++;

    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "question",
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  ques[count],
                  style: TextStyle(color: Colors.white),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    TextButton(
                      child: Text(
                        "True",
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: pressed1,
                      style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(Colors.green),
                      ),
                    ),
                    TextButton(
                      onPressed: pressed2,
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}

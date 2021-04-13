import 'package:flutter/material.dart';
import 'Quiz.dart';

class Question {
  int _quesNumber = 0;
  List<QuestionBank> _questions = [
    QuestionBank(ques: "question1", answer: "True"),
    QuestionBank(ques: "question2", answer: "False"),
    QuestionBank(ques: "question3", answer: "False"),
    QuestionBank(ques: "question4", answer: "True"),
    QuestionBank(ques: "question5", answer: "True"),
  ];

  List<Widget> _navigator = [];

  Widget correct = Icon(
    Icons.check,
    color: Colors.green,
  );

  Widget incorrect = Icon(
    Icons.close,
    color: Colors.red,
  );

  void nextQuestion() {
    if (_quesNumber + 1 < _questions.length) {
      _quesNumber++;
    }
  }

  void checkAnswer(String ans) {
    if (_quesNumber == _navigator.length) if (ans ==
        _questions[_quesNumber].answer)
      _navigator.add(correct);
    else
      _navigator.add(incorrect);
  }

  String getQuestion() {
    return _questions[_quesNumber].ques;
  }

  String getAnswer() {
    return _questions[_quesNumber].answer;
  }

  List<Widget> getNavigator() {
    return _navigator;
  }
}

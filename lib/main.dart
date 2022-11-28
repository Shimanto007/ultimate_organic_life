import 'package:flutter/material.dart';
import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  final questions = const [
    {
      'questionText': 'What is your favorite color?',
      'answers': ['black', 'red', 'green', 'white'],
    },
    {
      'questionText': 'What is your favorite animal?',
      'answers': ['cat', 'dog', 'turtle', 'rabbit'],
    },
    {
      'questionText': 'WHo is your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max'],
    },
  ];

  void _answerQuestion() {

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if(_questionIndex < questions.length) {
      print('we have more qeustion');
    }
  }

  Widget build(BuildContext context) {



    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ultimate Organic Life'),
        ),
        body: Column(
          children: [
            Question(
                questions[_questionIndex]['questionText'] as String),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answer) {
              return Answer(_answerQuestion, answer);
            }).toList()
          ],
        ),
      ),
    );
  }
}

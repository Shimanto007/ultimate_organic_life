import 'package:flutter/material.dart';
import './question.dart';

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

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex +1;
    });

  }

  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal?',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ultimate Organic Life'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestion,
                child: Text('Anser 1'),
            ),
            ElevatedButton(
              onPressed: () => print('Answer 2 chosen'),
              child: Text('Anser 2'),
            ),
            ElevatedButton(
              onPressed: () {
                print('Answer 3 chosen');
              },
              child: Text('Anser 3'),
            ),
          ],
        ),
      ),
    );
  }
}

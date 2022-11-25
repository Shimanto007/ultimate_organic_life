import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    var questions = [
      'What is your favorite color?',
      'What is your favorite animal',
    ];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ultimate Organic Life'),
        ),
        body: Column(
          children: [
            Text('The question!'),
            ElevatedButton(
                onPressed: () {},
                child: Text('Anser 1'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Anser 2'),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text('Anser 3'),
            ),
          ],
        ),
      ),
    );
  }
}

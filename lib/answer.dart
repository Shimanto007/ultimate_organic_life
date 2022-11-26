import 'package:flutter/material.dart';
import './question.dart';

class Answer extends StatelessWidget {

  final VoidCallback selectHandler;
  final String answerText;

  Answer(this.selectHandler, String this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style:ElevatedButton.styleFrom(
          foregroundColor: Colors.white, backgroundColor: Colors.blue,
        ),
        onPressed: selectHandler,
        child: Text(answerText),
      ),
    );
  }
}

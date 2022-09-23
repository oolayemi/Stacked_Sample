import 'package:flutter/material.dart';


class TextContainer extends StatelessWidget {

  String? text;

  TextContainer({this.text });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Align(
      alignment: Alignment.topLeft,
      child: Text(
        text!,
        style: TextStyle(
          color: Colors.black,
          fontFamily: 'Pop',
          fontSize: 16.0,
          fontWeight: FontWeight.w400,
        ),
      ),
    );
  }
}
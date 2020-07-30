import 'package:flutter/material.dart';
import '../constants.dart';

class BottomButton extends StatelessWidget {
  final Function onTap;
  final String buttonTitle;

  BottomButton({this.buttonTitle, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        child: Center(
          child: Text(
            buttonTitle,
            style: kBottomContainerTextStyle,
          ),
        ),
        color: Colors.red[900],
        margin: EdgeInsets.only(top: 12.0),
        height: kBottomContainerHeight,
        width: double.infinity,
      ),
    );
  }
}

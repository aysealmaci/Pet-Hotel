import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPressed;

  RoundButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      shape: CircleBorder(),
      color: Color.fromARGB(255, 13, 83, 15),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          width: 60.0,
          height: 60.0,
          child: Center(
            child: Text(
              "E",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
              child: Text("Please choose"),
            ),
            Center(
              child: Text("your pet"),
            ),
            Image.asset("assets/cat.jpg", height: 300),
          ],
        ),
      ),
    );
  }
}

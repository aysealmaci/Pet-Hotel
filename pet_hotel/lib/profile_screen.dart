import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pet_hotel/rounded_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Gökalp Eren Kangal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                ClipOval(child: RoundButton(onPressed: () {}))
              ],
            ),
          ),
        ],
      ),
    );
  }
}

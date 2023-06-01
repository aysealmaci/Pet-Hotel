import 'package:flutter/material.dart';
import 'package:pet_hotel/pet_categories.dart';
import 'package:pet_hotel/splash_screen.dart';

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
            PetCategories(),
          ],
        ),
      ),
    );
  }
}

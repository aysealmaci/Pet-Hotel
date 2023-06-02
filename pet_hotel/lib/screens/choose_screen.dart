import 'package:flutter/material.dart';
import 'package:pet_hotel/pet_categories.dart';
import 'package:pet_hotel/screens/splash_screen.dart';

class ChooseScreen extends StatelessWidget {
  const ChooseScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Center(
                child: Text(
                  "Please choose",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontStyle: FontStyle.italic),
                ),
              ),
              Center(
                child: Text(
                  "your pet",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 35,
                      fontStyle: FontStyle.italic),
                ),
              ),
              PetCategories(pet_picture: "assets/cat.jpeg"),
              PetCategories(pet_picture: "assets/dog.jpeg"),
              PetCategories(pet_picture: "assets/bird.jpeg"),
              PetCategories(pet_picture: "assets/fish.jpeg"),
              PetCategories(pet_picture: "assets/hamster.jpeg"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pet_hotel/book_screen.dart';

class PetCategories extends StatelessWidget {
  const PetCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: (() {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => BookPage()));
          }),
          child: Image.asset("assets/cat.jpg", height: 100),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: 200,
          height: 2,
          color: Colors.black,
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:pet_hotel/screens/make_reservation_page.dart';

class PetCategories extends StatelessWidget {
  const PetCategories({
    Key? key,
    this.pet_picture,
  }) : super(key: key);

  final String? pet_picture;
  @override
  Widget build(BuildContext context) {
    Size appSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          child: InkWell(
            onTap: (() {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => BookPage()));
            }),
            child: Image.asset(
              pet_picture!,
              height: 140,
              width: 200,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          width: appSize.width,
          height: 2,
          color: Colors.black,
        ),
      ],
    );
  }
}

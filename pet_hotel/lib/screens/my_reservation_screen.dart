import 'package:flutter/material.dart';
import 'package:pet_hotel/screens/make_reservation_page.dart';

class MyReservations extends StatelessWidget {
  const MyReservations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "My Reservations",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("You don't have any reservation"),
          ),
          Container(
            height: 300,
            width: 530,
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
            ),
            child: Column(children: [
              Image.asset(
                "assets/fish.jpeg",
                height: 140,
                width: 200,
              ),
              SizedBox(
                height: 20,
              ),
              Text("When you make any reservation, it will display here."),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      primary: Color.fromARGB(255, 9, 172, 150),
                      fixedSize: Size(200, 50),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5))),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: ((context) => BookPage())));
                  },
                  child: Text(
                    "Start Reservation",
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ))
            ]),
          )
        ],
      ),
    );
  }
}

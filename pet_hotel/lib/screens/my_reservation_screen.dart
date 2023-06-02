import 'package:flutter/material.dart';
import 'package:pet_hotel/screens/choose_screen.dart';
import 'package:pet_hotel/screens/make_reservation_page.dart';

class MyReservations extends StatelessWidget {
  const MyReservations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.search, color: Colors.grey.shade900),
          label: 'Make Res.',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.money, color: Colors.grey.shade900),
          label: 'Deals',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.airplane_ticket, color: Colors.grey.shade900),
          label: 'My Res.',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
            color: Colors.grey.shade900,
          ),
          label: 'Profile',
        ),
      ]),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "My Reservations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text("")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "You don't have any reservation",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                Text("")
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 330,
              width: 530,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 245, 245, 245),
              ),
              child: Column(children: [
                Image.asset(
                  "assets/1.jpeg",
                  height: 200,
                  width: 400,
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
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: ((context) => ChooseScreen())));
                    },
                    child: Text(
                      "Start Reservation",
                      style: TextStyle(
                        fontSize: 18,
                      ),
                    ))
              ]),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Past Reservations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 35,
                  ),
                ),
                Text("")
              ],
            ),
            Container(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              "1.",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              "assets/cat.jpeg",
                              height: 140,
                              width: 200,
                            ),
                          ],
                        ),
                        Text(
                          "Feb 6 - Feb 11",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Text(
                              "2.",
                              style: TextStyle(
                                  fontSize: 30, fontWeight: FontWeight.bold),
                            ),
                            Image.asset(
                              "assets/hamster.jpeg",
                              height: 140,
                              width: 200,
                            ),
                          ],
                        ),
                        Text(
                          "May 6 - May 13",
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

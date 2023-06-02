import 'package:flutter/material.dart';
import 'package:pet_hotel/screens/choose_screen.dart';
import 'package:pet_hotel/main.dart';
import 'package:pet_hotel/screens/my_reservation_screen.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 4), () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => MyReservations())));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/splash.jpeg",
                ),
                fit: BoxFit.contain)),
      ),
      backgroundColor: Colors.white,
    );
  }
}

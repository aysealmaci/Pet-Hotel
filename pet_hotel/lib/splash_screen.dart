import 'package:flutter/material.dart';
import 'package:pet_hotel/choose_screen.dart';
import 'package:pet_hotel/main.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.push(
          context, MaterialPageRoute(builder: ((context) => ChooseScreen())));
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  "assets/Splash.GIF",
                ),
                fit: BoxFit.contain)),
      ),
      backgroundColor: Colors.white,
    );
  }
}

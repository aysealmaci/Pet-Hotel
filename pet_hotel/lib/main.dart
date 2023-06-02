import 'package:flutter/material.dart';
import 'package:pet_hotel/book_screen.dart';
import 'package:pet_hotel/profile_screen.dart';
import 'package:pet_hotel/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PET HOTEL',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ProfileScreen(),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:pet_hotel/profile_context.dart';
import 'package:pet_hotel/rounded_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 20,
          ),
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
          SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Notifications and support",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ProfileContext(
            name: "Inbox",
            icon_name: Icon(Icons.inbox),
          ),
          ProfileContext(
            name: "Price Allerts",
            icon_name: Icon(Icons.notification_add),
          ),
          ProfileContext(
            name: "Supoort",
            icon_name: Icon(Icons.call),
          ),
          ProfileContext(
            name: "Help",
            icon_name: Icon(Icons.info),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 30, 0, 0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  "Account",
                  style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                ),
              ],
            ),
          ),
          SizedBox(height: 10),
          ProfileContext(
            name: "Personal Details",
            icon_name: Icon(Icons.person),
          ),
          ProfileContext(
            name: "Saved Animals",
            icon_name: Icon(Icons.book),
          ),
          ProfileContext(
            name: "Account Balance",
            icon_name: Icon(Icons.account_balance),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ProfileContext extends StatelessWidget {
  const ProfileContext({
    Key? key,
    this.name,
    this.icon_name,
  }) : super(key: key);

  final String? name;
  final Icon? icon_name;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                      child: icon_name,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Text(
                        name!,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Icon(
            Icons.keyboard_arrow_right,
          ),
        )
      ],
    );
  }
}

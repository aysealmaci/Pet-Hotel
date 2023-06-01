import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  DateTime today = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("ABC"),
          Container(
            child: TableCalendar(
                focusedDay: today,
                firstDay: DateTime.utc(2023, 6, 1),
                lastDay: DateTime.utc(2023, 12, 31)),
          )
        ],
      ),
    );
  }
}

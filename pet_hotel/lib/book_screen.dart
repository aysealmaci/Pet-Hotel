import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  DateTime today = DateTime.now();

  void _selectedDay(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Choose The Date"),
          Container(
            child: TableCalendar(
              locale: "en_US",
              rowHeight: 50,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2023, 6, 1),
              lastDay: DateTime.utc(2023, 12, 31),
              onDaySelected: _selectedDay,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Text("Selected day for booking is: " + today.toString().split(".")[0])
        ],
      ),
    );
  }
}

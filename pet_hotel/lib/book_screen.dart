import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  DateTime? firstDate;
  DateTime? secondDate;
  final DateFormat _dateFormat = DateFormat("dd MMMM");

  void _selectedDay(DateTime day, DateTime? focusedDay) {
    setState(() {
      if (firstDate == null) {
        firstDate = day;
      } else if (secondDate == null) {
        secondDate = day;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Text("Choose The Dates"),
          Container(
            child: TableCalendar(
              locale: "en_US",
              rowHeight: 50,
              headerStyle: HeaderStyle(
                formatButtonVisible: false,
                titleCentered: true,
              ),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) =>
                  isSameDay(day, firstDate) || isSameDay(day, secondDate),
              focusedDay: firstDate ?? DateTime.now(),
              firstDay: DateTime.utc(2023, 6, 1),
              lastDay: DateTime.utc(2023, 12, 31),
              onDaySelected: _selectedDay,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            children: [
              Column(
                children: [
                  Text(
                    "Departure",
                    style: TextStyle(color: Colors.grey),
                  ),
                  if (firstDate != null)
                    Text("Selected first date for booking is: " +
                        _dateFormat.format(firstDate!)),
                ],
              ),
              SizedBox(
                width: 70,
              ),
              Container(
                width: 2,
                height: 200,
                color: Colors.black,
              ),
              Column(
                children: [
                  Text(
                    "Departure",
                    style: TextStyle(color: Colors.grey),
                  ),
                  if (secondDate != null)
                    Text("Selected second date for booking is: " +
                        _dateFormat.format(secondDate!)),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

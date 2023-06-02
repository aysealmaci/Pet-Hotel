import 'package:flutter/material.dart';
import 'package:pet_hotel/screens/choose_screen.dart';
import 'package:pet_hotel/screens/profile_screen.dart';
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
    Size appSize = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 100,
                        width: appSize.width / 23 * 10,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Color.fromARGB(255, 186, 186, 186),
                            width: 1.0,
                          ),
                        ),
                        child: Container(
                          width: appSize.width / 23 * 10,
                          child: Column(
                            children: [
                              Text(
                                "Arrival",
                                style: TextStyle(color: Colors.black),
                              ),
                              if (firstDate != null)
                                Text(_dateFormat.format(firstDate!)),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width: appSize.width / 23 * 10,
                    child: Column(
                      children: [
                        Container(
                          height: 100,
                          width: appSize.width / 23 * 10,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey,
                              width: 1.0,
                            ),
                          ),
                          child: Column(
                            children: [
                              Text(
                                "Departure",
                                style: TextStyle(
                                    color: Color.fromARGB(255, 0, 0, 0)),
                              ),
                              if (secondDate != null)
                                Text(_dateFormat.format(secondDate!)),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 50,
                      width: appSize.width / 3,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 185, 171, 165),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => ChooseScreen())));
                          },
                          child: Text(
                            "close",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 50,
                      width: appSize.width / 3 * 1.75,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 59, 143, 90),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15))),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: ((context) => ProfileScreen())));
                          },
                          child: Text(
                            "Set date",
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          ))),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

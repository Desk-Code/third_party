import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DateTimePickerDemo extends StatefulWidget {
  const DateTimePickerDemo({super.key});

  @override
  State<DateTimePickerDemo> createState() => _DateTimePickerDemoState();
}

class _DateTimePickerDemoState extends State<DateTimePickerDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DateTimePicker(
          dateLabelText: "Date",
          initialDate: DateTime.now(),
          firstDate: DateTime(2000),
          lastDate: DateTime(2050),
          style: GoogleFonts.lato(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
              fontSize: 25),
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:third_party/shared_preference/counter_shared.dart';

class SharedPreferenceDemo extends StatefulWidget {
  const SharedPreferenceDemo({super.key});

  @override
  State<SharedPreferenceDemo> createState() => _SharedPreferenceDemoState();
}

class _SharedPreferenceDemoState extends State<SharedPreferenceDemo> {
  int counter = CounterShared.getCounter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          counter.toString(),
          style: const TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            CounterShared.setCounter = ++counter;
            // counter = CounterShared.getCounter;
            setState(() {});
          },
          child: const Icon(Icons.add)),
    );
  }
}

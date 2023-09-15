import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class FlutterToastDemo extends StatefulWidget {
  const FlutterToastDemo({super.key});

  @override
  State<FlutterToastDemo> createState() => _FlutterToastDemoState();
}

class _FlutterToastDemoState extends State<FlutterToastDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Fluttertoast.showToast(
              msg: 'You are tap on Show Toast Button',
              gravity: ToastGravity.TOP,
              toastLength: Toast.LENGTH_SHORT,
            );
            setState(() {});
          },
          child: const Text("Show Toast"),
        ),
      ),
    );
  }
}

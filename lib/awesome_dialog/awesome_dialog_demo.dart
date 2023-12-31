import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AwesomeDialogDemo extends StatefulWidget {
  const AwesomeDialogDemo({super.key});

  @override
  State<AwesomeDialogDemo> createState() => _AwesomeDialogDemoState();
}

class _AwesomeDialogDemoState extends State<AwesomeDialogDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              AwesomeDialog(
                      context: context,
                      dialogType: DialogType.info,
                      animType: AnimType.rightSlide,
                      btnOkOnPress: () {},
                      title: "Info",
                      desc: "Info about to your data",
                      btnOk: ElevatedButton(
                          onPressed: () {}, child: const Text("Success")))
                  .show();
            },
            child: const Text("Awesome Dialog")),
      ),
    );
  }
}

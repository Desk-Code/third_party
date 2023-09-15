import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class IntlPhoneFieldDemo extends StatefulWidget {
  const IntlPhoneFieldDemo({super.key});

  @override
  State<IntlPhoneFieldDemo> createState() => _IntlPhoneFieldDemoState();
}

class _IntlPhoneFieldDemoState extends State<IntlPhoneFieldDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            IntlPhoneField(
              decoration: const InputDecoration(border: OutlineInputBorder()),
              initialCountryCode: 'IN',
              keyboardType: TextInputType.number,
              onChanged: (value) {
                if (kDebugMode) {
                  print(value.number);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}

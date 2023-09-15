import 'package:country_picker/country_picker.dart';
import 'package:flutter/material.dart';

class CountryPickerDemo extends StatefulWidget {
  const CountryPickerDemo({super.key});

  @override
  State<CountryPickerDemo> createState() => _CountryPickerDemoState();
}

class _CountryPickerDemoState extends State<CountryPickerDemo> {
  Country country = Country(
    phoneCode: "+91",
    countryCode: "IN",
    e164Sc: 0,
    geographic: true,
    level: 1,
    name: "INDIA",
    example: "IN",
    displayName: "INDIA",
    displayNameNoCountryCode: "INDIA",
    e164Key: "e164Key",
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  showCountryPicker(
                    useSafeArea: false,
                    context: context,
                    onSelect: (value) {
                      country = value;
                    },
                  );
                },
                child: const Text("Country Picker"),
              ),
              Text(
                  "${country.flagEmoji} ${country.phoneCode} ${country.displayName}"),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class FlutterRatingBarDemo extends StatefulWidget {
  const FlutterRatingBarDemo({super.key});

  @override
  State<FlutterRatingBarDemo> createState() => _FlutterRatingBarDemoState();
}

class _FlutterRatingBarDemoState extends State<FlutterRatingBarDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RatingBar.builder(
          minRating: 1,
          initialRating: 3,
          itemCount: 5,
          itemBuilder: (context, index) {
            switch (index) {
              case 0:
                return const Icon(
                  Icons.sentiment_very_dissatisfied,
                  color: Colors.red,
                );
              case 1:
                return const Icon(
                  Icons.sentiment_dissatisfied,
                  color: Colors.redAccent,
                );
              case 2:
                return const Icon(
                  Icons.sentiment_neutral,
                  color: Colors.amber,
                );
              case 3:
                return const Icon(
                  Icons.sentiment_satisfied,
                  color: Colors.lightGreen,
                );
              case 4:
                return const Icon(
                  Icons.sentiment_very_satisfied,
                  color: Colors.green,
                );
            }
            return const SizedBox();
          },
          onRatingUpdate: (rating) {
            if (kDebugMode) {
              print(rating);
            }
          },
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';

class RazorPayDemo extends StatefulWidget {
  const RazorPayDemo({super.key});

  @override
  State<RazorPayDemo> createState() => _RazorPayDemoState();
}

class _RazorPayDemoState extends State<RazorPayDemo> {
  //

  final _razorPay = Razorpay();

  var options = {
    'key': 'rzp_test_yNCgfS03jZXBVM',
    'amount': 100,
    'name': 'Acme Corp.',
    'description': 'Fine T-Shirt',
    'prefill': {'contact': '8888888888', 'email': 'test@razorpay.com'}
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            _razorPay.open(options);
            _razorPay.on(Razorpay.EVENT_PAYMENT_SUCCESS, paymentSuccess);
            _razorPay.on(Razorpay.EVENT_PAYMENT_ERROR, paymentFailure);
          },
          child: const Text("Pay"),
        ),
      ),
    );
  }

  void paymentSuccess(PaymentSuccessResponse paymentSuccessResponse) {
    // log("${paymentSuccessResponse.orderId}");
    log("${paymentSuccessResponse.paymentId}");
    // log("${paymentSuccessResponse.signature}");
  }

  void paymentFailure(PaymentFailureResponse paymentFailureResponse) {
    log("${paymentFailureResponse.code}");
    log("${paymentFailureResponse.error}");
    log("${paymentFailureResponse.message}");
  }
}

import 'package:flutter/material.dart';
import 'package:snippet_coder_utils/FormHelper.dart';

class OrderSuccess extends StatelessWidget {
  const OrderSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Order Success"),
        backgroundColor: const Color(0xff1bba85),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Your Order has been placed! you will recieve an email shortly, Thank You!",
                style: TextStyle(
                  fontSize: 20,
                ),
                textAlign: TextAlign.center,
              ),
              Icon(
                Icons.celebration,
                size: 200,
                color: Colors.red,
              ),
              Center(
                child: FormHelper.submitButton(
                  "Go back to Book Store!",
                  () {
                    Navigator.of(context)
                        .pushNamedAndRemoveUntil("/", (route) => false);
                  },
                  btnColor: const Color(0xff1bba85),
                  txtColor: Colors.white,
                  borderColor: Colors.white,
                  borderRadius: 20,
                  width: 250,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

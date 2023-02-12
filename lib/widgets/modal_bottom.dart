import 'package:flutter/material.dart';
import '../constants.dart';

Future<dynamic> ModalBottom(BuildContext context) {
  return showModalBottomSheet(
    context: context,
    builder: (context) => SizedBox(
      height: 200,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "paper win rock".toUpperCase(),
                    style: kMeduimTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "rock win scissors ".toUpperCase(),
                    style: kMeduimTextStyle,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "scissors win paper".toUpperCase(),
                    style: kMeduimTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Close",
                  style: kButtonTextStyle,
                ),
              )
            ],
          ),
        ),
      ),
    ),
  );
}

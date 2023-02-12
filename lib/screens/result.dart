import 'package:flutter/material.dart';
import 'package:rock_paper_scissors/widgets/navigate_button.dart';
import '../constants.dart';

class ResultScreen extends StatelessWidget {
  const ResultScreen({
    super.key,
    required this.winnerText,
    required this.aiImage,
    required this.humanImage,
  });
  final String winnerText, aiImage, humanImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  'Your Result'.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: kLargeTextStyle,
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        const Expanded(
                          child: Text(
                            'You',
                            style: kMeduimTextStyle,
                          ),
                        ),
                        Image.asset(humanImage),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        const Expanded(
                          child: Text(
                            'AI',
                            style: kMeduimTextStyle,
                          ),
                        ),
                        Image.asset(aiImage),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  winnerText.toUpperCase(),
                  textAlign: TextAlign.center,
                  style: kLargeTextStyle,
                ),
              ),
            ),
            NavigateButton(
              onPressed: () => Navigator.pop(context),
              title: 'PLAY AGAIN',
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import '../constants.dart';

class NavigateButton extends StatelessWidget {
  const NavigateButton({
    super.key,
    required this.title,
    required this.onPressed,
  });

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          title,
          style: kButtonTextStyle,
        ),
      ),
    );
  }
}

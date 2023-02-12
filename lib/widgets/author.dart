import 'package:flutter/material.dart';
import '../constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Author extends StatelessWidget {
  const Author({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Made with'.toUpperCase(),
            style: kMeduimTextStyle,
          ),
          const Padding(
            padding: EdgeInsets.only(left: 3, right: 3),
            child: Icon(
              FontAwesomeIcons.solidHeart,
              color: Colors.red,
              size: 20,
            ),
          ),
          Text(
            'by reach'.toUpperCase(),
            style: kMeduimTextStyle,
          ),
        ],
      ),
    );
  }
}

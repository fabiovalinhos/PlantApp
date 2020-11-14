import 'package:flutter/material.dart';

import '../constants.dart';

class TitleWithMoreBtn extends StatelessWidget {
  final String title;
  final Function prress;

  const TitleWithMoreBtn({this.title, this.prress});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: [
          TitleWithCustomUnderline(
            text: title,
          ),
          Spacer(),
          FlatButton(
            onPressed: prress,
            child: Text(
              'More',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: kPrimaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          ),
        ],
      ),
    );
  }
}

class TitleWithCustomUnderline extends StatelessWidget {
  final String text;
  const TitleWithCustomUnderline({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 24,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: kDefaultPadding / 4),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              margin: EdgeInsets.only(right: kDefaultPadding / 4),
              height: 7,
              color: kPrimaryColor.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../constants.dart';

class WeathrCitys extends StatelessWidget {
  final String text;
  final int tempCity;
  const WeathrCitys({
    Key key,
    @required this.text,
    @required this.tempCity,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      width: 160,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kButtonColor,
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 15,
            horizontal: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                text,
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              ),
              Text(
                'Temperature: $tempCity',
                style:
                    TextStyle(fontWeight: FontWeight.bold, color: kTextColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/models/page_one/search.dart';

import '../../constants.dart';

class CardWeather extends StatelessWidget {
  const CardWeather({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 270,
        width: 330,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: kBackgroundColor,
        ),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Center(
                    child: Text(
                      'Moscow',
                      style: TextStyle(fontSize: 24),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 50,
              left: 30,
              child: Text(
                'Weather:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 80,
              left: 50,
              child: Text(
                'Description:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 110,
              left: 30,
              child: Text(
                'Temperature:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 140,
              left: 50,
              child: Text(
                'Min, t:',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
              top: 170,
              left: 50,
              child: Text(
                'Max, t:',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/page_one/pictures.dart';
import 'package:weather_app/models/page_one/search.dart';
import 'package:weather_app/models/page_one/weather_city.dart';
import 'package:weather_app/pages/page_of_city.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Spacer(flex: 1),
          Search(),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => PageOfCity(),
                ),
              );
            },
            child: Text(
              'Search',
              style: TextStyle(color: kTextColor),
            ),
          ),
          Spacer(flex: 3),
          Pictures(),
          Spacer(flex: 4),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              WeathrCitys(
                text: 'New York',
                tempCity: 16,
              ),
              WeathrCitys(
                text: 'Monako',
                tempCity: 28,
              ),
            ],
          ),
          Spacer(flex: 2)
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:weather_app/models/page_one/search.dart';

import 'card_weather.dart';

class WheatherCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(flex: 1),
        //Search(),
        Spacer(flex: 5),
        CardWeather(),
        Spacer(flex: 10),
      ],
    );
  }
}

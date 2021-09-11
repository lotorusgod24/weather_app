import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/models/page_two/weather_city.dart';

import '../constants.dart';

class PageOfCity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        leading: IconButton(
          icon: SvgPicture.asset(
            'assets/menu.svg',
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Sign In',
              style: TextStyle(color: kTextColor),
            ),
          ),
        ],
      ),
      body: WheatherCity(),
    );
  }
}

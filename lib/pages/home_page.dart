import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/models/page_one/main_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: MainPage(),
    );
  }
}

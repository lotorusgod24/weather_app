import 'package:flutter/material.dart';
import 'package:weather_app/models/page_two/details/data_service.dart';
import 'package:weather_app/models/page_two/details/models.dart';

import '../../constants.dart';

class Search extends StatefulWidget {
  @override
  _SearchState createState() => _SearchState();
}

final cityTextController = TextEditingController();

class _SearchState extends State<Search> {
  final dataSevice = DataService();
  WeatherResponse _response;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 250,
      child: TextField(
        controller: cityTextController,
        style: TextStyle(color: kTextColor),
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          labelText: 'Search City',
          labelStyle: TextStyle(color: kTextColor),
          enabledBorder: new UnderlineInputBorder(
            borderSide: BorderSide(color: kTextColor),
          ),
        ),
      ),
    );
  }

  void search() async {
    //final response = await dataSevice.getWeather(cityTextController.text);
    final response = await dataSevice.getWeather(cityTextController.text);
    setState(() => _response = response);
  }
}

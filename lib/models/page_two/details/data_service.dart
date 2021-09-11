import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/page_two/details/models.dart';

class DataService {
  Future<WeatherResponse> getWeather(String city) async {
    final queryParametrs = {
      //api.openweathermap.org/data/2.5/weather?q={city name}&appid={API key}

      'q': city,
      'appid': '71aa59c2756f25c301007d830e6f6d88',
      'units': 'metric',
    };

    final uri = Uri.https(
        'api.openweathermap.org', '/data/2.5/weather', queryParametrs);

    final response = await http.get(uri);

    print(response.body);
    final json = jsonDecode(response.body);
    return WeatherResponse.fromJson(json);
  }
}

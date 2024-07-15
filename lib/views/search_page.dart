import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Providers/weather_provider.dart';
import '../models/weather_model.dart';
import '../serveses/weather_service.dart';
import 'home_page.dart';


class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.orangeAccent,
        title: const Text("Search A City"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Center(
          child: TextField(
            onSubmitted: (value) async {
              WeatherServices we = WeatherServices(dio: Dio());
              WeatherModel weatherModel =
                  await we.getCurrentWeather(country: value);

              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weatherModel;
              HomePage.s = true;

              HomePage.s = true;

              Navigator.pop(context);
            },
            decoration: const InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                labelText: 'Search',
                suffixIcon: Icon(Icons.search),
                hintText: ("Enter city Name"),
                border: OutlineInputBorder()),
          ),
        ),
      ),
    );
  }
}

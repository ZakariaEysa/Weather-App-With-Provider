import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'search_page.dart';
import 'weather_body_info.dart';

import '../Providers/weather_provider.dart';
import '../models/weather_model.dart';
import 'no_weather_body.dart';

class HomePage extends StatelessWidget {
  static bool s = false;
  WeatherModel? weatherData;

  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    weatherData = Provider.of<WeatherProvider>(context).weatherData;

    return Scaffold(
        appBar: AppBar(
          backgroundColor: (Provider.of<WeatherProvider>(context, listen: true)
                      .weatherData !=
                  null)
              ? Colors.orange
              : Colors.white,
          title: const Text("Weather App"),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) {
                      return const SearchPage();
                    },
                  ));
                },
                icon: const Icon(Icons.search, size: 27),
              ),
            ),
          ],
        ),
        body: (Provider.of<WeatherProvider>(context, listen: true)
                    .weatherData !=
                null)
            ? WeatherBodyInfo(
                cityName:
                    Provider.of<WeatherProvider>(context).weatherData?.cityName,
                date: Provider.of<WeatherProvider>(context).weatherData!.date,
                maxTemp:
                    Provider.of<WeatherProvider>(context).weatherData!.maxTemp,
                minTemp:
                    Provider.of<WeatherProvider>(context).weatherData!.minTemp,
                status:
                    Provider.of<WeatherProvider>(context).weatherData!.status,
                temp: Provider.of<WeatherProvider>(context).weatherData!.temp,
              )
            : const NoWeatherBody());
  }
}

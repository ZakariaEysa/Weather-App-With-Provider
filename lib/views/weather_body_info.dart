import 'package:flutter/material.dart';

class WeatherBodyInfo extends StatelessWidget {
  const WeatherBodyInfo(
      {super.key,
      required this.cityName,
      required this.date,
      required this.status,
      required this.temp,
      required this.maxTemp,
      required this.minTemp});

  final String? cityName;
  final String date;
  final String status;
  final double temp;
  final double maxTemp;
  final double minTemp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.orangeAccent,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "$cityName",
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'updated at $date',
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 22,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Image.asset('assets/images/clear.png'),

                //  Image.network(image),
                Text(
                  '$temp',
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 32,
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),

                Column(
                  children: [
                    Text(
                      'MaxTemp: $maxTemp',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Text(
                      'MinTemp: $minTemp',
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Text(
              status,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

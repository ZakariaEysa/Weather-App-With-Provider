import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:withearappwithprovider/views/homepage.dart';

import 'Providers/weatherprovider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ChangeNotifierProvider(

              create: (context) {

                return WeatherProvider();
              },
      child:   MaterialApp(
        debugShowCheckedModeBanner: false,
        home:  Home_Page(),
      ),
    );
  }
}

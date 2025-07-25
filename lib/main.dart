import 'package:bike_ride_ui/core/screens/care/care_screen.dart';
import 'package:bike_ride_ui/core/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bike Ride Sharing App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color(0xFF584CF4),
        ),
        useMaterial3: true,
      ),
      initialRoute: '/care',
      routes: {
        '/home': (context) => const HomePage(),
        '/care': (context) => CarePage(),
      },
    );
  }
}

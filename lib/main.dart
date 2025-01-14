import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/provider/toggle_btn.dart';
import 'package:weather_project/screens/home.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => VisibleBtn(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

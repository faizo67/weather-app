import 'package:flutter/material.dart';
import 'package:weather_project/widgets/fore_ground.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Positioned(
            bottom: height / 2.4,
            child: Image.asset(
              'assets/new-york.jpg',
              height: height,
              width: width,
              fit: BoxFit.cover,
            )),
        Positioned(
          bottom: 0,
          child: Container(
            height: height / 2.4,
            width: width,
            color:const Color(0xFF2D2C35),
          ),
        ),
        const Foreground()
      ],
    );
  }
}
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_project/provider/toggle_btn.dart';
import 'package:weather_project/widgets/big-container.dart';
import 'package:weather_project/widgets/grid_container.dart';
import 'package:weather_project/widgets/location_widget.dart';
import 'package:weather_project/widgets/scrolling_card.dart';

class MainWidget extends StatefulWidget {
  const MainWidget({
    super.key,
    required this.inputBorder,
  });

  final OutlineInputBorder inputBorder;

  @override
  State<MainWidget> createState() => _MainWidgetState();
}

class _MainWidgetState extends State<MainWidget> {
  @override
  Widget build(BuildContext context) {
    final visibilityState = Provider.of<VisibleBtn>(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 50),
        Visibility(
          visible: visibilityState.isVisible,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Hello Siti',
                style: TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 5),
              const Text(
                'Check the weather by the city',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.w700,
                ),
              ),
              const SizedBox(height: 35),
              TextField(
                decoration: InputDecoration(
                  border: widget.inputBorder,
                  enabledBorder: widget.inputBorder,
                  focusedBorder: widget.inputBorder,
                  hintText: 'Search city',
                  hintStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  suffixIcon: const Icon(Icons.search, color: Colors.white),
                ),
              ),
              const SizedBox(
                height: 150,
              )
            ],
          ),
        ),
        const LocationWidget(),
        const SizedBox(height: 30),
        const MainArea(),
        const SizedBox(height: 30),
        const ListHorizontal(
          time: '9:00am',
          img: 'assets/weather-app.png',
          temp: '30/32',
          des: 'Party Cloudy',
        ),
        const SizedBox(height: 30),
        const CardItem(),
        const SizedBox(height: 20),
      ],
    );
  }
}

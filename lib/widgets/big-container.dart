// ignore: file_names
import 'package:flutter/material.dart';

class MainArea extends StatelessWidget {
  const MainArea({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return

        // Container with decoration and content
        SizedBox(
      height: 170,
      // color: Colors.yellow,
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          Center(
            child: Container(
              height: 130,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: const Color.fromARGB(0, 74, 145, 244),
                border: Border.all(
                  color: Colors.grey.withOpacity(0.5),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.all(22.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '30°', // Corrected from '30^' to '30°'
                          style: TextStyle(
                            fontSize: 55,
                            fontWeight: FontWeight.w700,
                            // height: -1.5,
                          ),
                        ),
                        Text(
                          'Feel Fee/ Partly Cloudy', // Corrected from 'Party Cloudy' to 'Partly Cloudy'
                          style: TextStyle(
                              color: Colors.white,
                              // fontFamily: 'Montserrat-Regular',
                              fontWeight: FontWeight.w500,
                              fontSize: 13),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              'assets/weather-app.png',
              width: width * 0.28,
            ),
          ),
          // Positioned(
          //   bottom: width * 0.15,
          //   left: MediaQuery.of(context).size.width * 0.6,
          //   child: Image.asset(
          //     'assets/weather-app.png',
          //     width: width * 0.28,
          //   ),

          //   // CircleAvatar(
          //   //   radius: 50,
          //   //   backgroundImage: AssetImage('asset/weather-app.png',),
          //   // ),
          // )
        ],
      ),
    );
  }
}

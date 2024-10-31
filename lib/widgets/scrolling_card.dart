import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListHorizontal extends StatelessWidget {
  final String time;
  final String img;
  final String temp;
  final String des;

  const ListHorizontal(
      {super.key,
      required this.des,
      required this.temp,
      required this.time,
      required this.img});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 210,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: const AlwaysScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          ListCard(time: time, img: img, temp: temp, des: des),
          ListCard(time: time, img: img, temp: temp, des: des),
          ListCard(time: time, img: img, temp: temp, des: des),
          ListCard(time: time, img: img, temp: temp, des: des),
          ListCard(time: time, img: img, temp: temp, des: des),
        ],
      ),
    );
  }
}

class ListCard extends StatelessWidget {
  const ListCard({
    super.key,
    required this.time,
    required this.img,
    required this.temp,
    required this.des,
  });

  final String time;
  final String img;
  final String temp;
  final String des;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      margin: const EdgeInsets.all(6),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(0.5),
          borderRadius: BorderRadius.circular(30),
          border: Border.all(
            width: 1,
            color: Colors.grey.withOpacity(0.5),
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              spreadRadius: 2,
              blurRadius: 10,
              offset: const Offset(0, 3),
            )
          ]),
      child: DefaultTextStyle(
        style: GoogleFonts.raleway(color: Colors.white),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const SizedBox(
              height: 15,
            ),
            Text(
              time,
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),

            Image.asset(
              img,
              width: 50,
              height: 50,
            ),
            // Image(image: imge),
            // Text(
            //   imge,
            //   style: const TextStyle(
            //     color: Colors.red,
            //   ),
            // ),
            const SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Text(
                temp,
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 0,
            ),

            Text(
              des,
              style: TextStyle(
                color: Colors.grey.withOpacity(0.9),
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

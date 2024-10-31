// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        border: Border.all(
          color: Colors.grey.withOpacity(0.4),
          width: 1,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.sunny,
                        color: const Color.fromARGB(255, 209, 206, 206)
                            .withOpacity(0.6),
                      ),
                      const Text(
                        'Very High',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Uv Index',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 209, 206, 206)
                              .withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.air,
                        color: const Color.fromARGB(255, 209, 206, 206)
                            .withOpacity(0.6),
                      ),
                      const Text(
                        '4km',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Uv Index',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 209, 206, 206)
                              .withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.water_drop_sharp,
                        color: const Color.fromARGB(255, 209, 206, 206)
                            .withOpacity(0.6),
                      ),
                      const Text(
                        '56%',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Uv Index',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 209, 206, 206)
                              .withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.hot_tub,
                        color: const Color.fromARGB(255, 209, 206, 206)
                            .withOpacity(0.6),
                      ),
                      const Text(
                        '24',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Uv Index',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 209, 206, 206)
                              .withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.air,
                        color: const Color.fromARGB(255, 209, 206, 206)
                            .withOpacity(0.6),
                      ),
                      const Text(
                        '1005.1mb',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Uv Index',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 209, 206, 206)
                              .withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Icon(
                        Icons.remove_red_eye,
                        color: const Color.fromARGB(255, 209, 206, 206)
                            .withOpacity(0.6),
                      ),
                      const Text(
                        '6.01km',
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.w500),
                      ),
                      Text(
                        'Uv Index',
                        style: TextStyle(
                          color: const Color.fromARGB(255, 209, 206, 206)
                              .withOpacity(0.6),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

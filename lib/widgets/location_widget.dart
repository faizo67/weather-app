import 'package:flutter/material.dart';
// ignore: camel_case_types
class LocationWidget extends StatelessWidget {
  const LocationWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(
            'My locations',
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w600,
            ),
          ),
          OutlinedButton(
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
              side: const BorderSide(width: 1, color: Colors.white),
              shape: const CircleBorder(),
            ),
            onPressed: () {},
            child: const Icon(Icons.more_horiz),
          )
        ]);
  }
}

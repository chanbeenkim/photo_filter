import 'package:flutter/material.dart';

class EditScreenIf extends StatelessWidget {
  final String subtitle1, subtitle2, subtitle3, subtitle4;
  const EditScreenIf(
      {super.key,
      required this.subtitle1,
      required this.subtitle2,
      required this.subtitle3,
      required this.subtitle4});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 30,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                subtitle1,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 94,
              ),
              Text(
                subtitle2,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          color: Colors.black,
          height: 1,
        ),
        const SizedBox(
          height: 7,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                subtitle3,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              const SizedBox(
                width: 94,
              ),
              Text(
                subtitle4,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 7,
        ),
        Container(
          color: Colors.black,
          height: 1,
        ),
        const SizedBox(
          height: 7,
        ),
      ],
    );
  }
}

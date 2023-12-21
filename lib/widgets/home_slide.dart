import 'package:flutter/material.dart';

class HomeSlide extends StatelessWidget {
  final dynamic image, editScreen;
  final String title;

  const HomeSlide({
    super.key,
    required this.image,
    required this.title,
    required this.editScreen,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => editScreen,
              ),
            );
          },
          child: Image.asset(image),
        ),
        const Padding(
          padding: EdgeInsets.all(20),
          child: Icon(Icons.camera),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 10,
            ),
          ),
        ),
      ],
    );
  }
}

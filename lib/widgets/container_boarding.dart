import 'package:flutter/material.dart';

class ContainerBoarding extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const ContainerBoarding({
    Key? key, 
    required this.image, 
    required this.title,
    required this.description
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          image,
          height: 200,
          width: 200,
        ),

        Text(
          title, 
          style: const TextStyle(
            color: Color(0xFF4f1581),
            fontWeight: FontWeight.bold,
            fontSize: 18,
          ),
        ),

        const SizedBox(height: 15),
        
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          child: Text(
            description,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Color(0xFF757575)
            ),
          ),
        ),
      ],
    );
  }
}
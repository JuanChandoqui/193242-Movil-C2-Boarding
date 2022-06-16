import 'package:flutter/material.dart';

import '../../styles/Colors/ColorsView.dart';

class CardServices extends StatelessWidget {
  final String imageUrl;
  final String textImage;
  final bool isSelected;

  const CardServices({
    Key? key,
    required this.size,
    required this.imageUrl,
    required this.textImage,
    required this.isSelected
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {

    return SizedBox( 
      height: size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(
              color: isSelected
                ? ColorsViews.textBoarding
                : ColorsViews.colorGray  
            )
          ),
        
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Image(image: AssetImage(imageUrl), height: 100),
              Text(
                textImage, 
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: ColorsViews.buttonMainColor,
                ),  
              )
            ],
          ),
        ),
      ),
    );
  }
}
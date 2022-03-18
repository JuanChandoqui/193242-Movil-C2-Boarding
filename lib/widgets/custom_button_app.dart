import 'package:flutter/material.dart';

class CustomButtonApp extends StatelessWidget {

  final Size size;
  final String textButton;

  const CustomButtonApp({
    Key? key,
    required this.size,
    required this.textButton
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width * 0.9,
      height:  size.height * 0.5,
      child: ElevatedButton(
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 16
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: const Color(0xFF76A757),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )
        ),

        onPressed: ()=>{}
      ),  
    );
  }
}
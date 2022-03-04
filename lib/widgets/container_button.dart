import 'package:flutter/material.dart';

class ContainerButton extends StatelessWidget {
  final String text;
  final Color? backgroundColor;
  final Color colorText;
  final Color borderColor;

  const ContainerButton({
    Key? key, 
    required this.text, 
    this.backgroundColor, 
    required this.colorText, 
    required this.borderColor,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 50,
      child: ElevatedButton(
        child: Text(text),
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
            side: BorderSide(
              color: borderColor
            )
          ),
          elevation: 1,
          primary: backgroundColor,
          onPrimary: colorText
        ),
        onPressed: () {
          print('is clicked');
        }
      ), 
    );
  }
}
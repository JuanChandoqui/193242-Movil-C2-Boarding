import 'package:flutter/material.dart';

import '../styles/Colors/ColorsView.dart';

class BottomButtonCustom extends StatelessWidget {

  final String text;
  final String textButton;

  const BottomButtonCustom({
    Key? key, 
    required this.text, 
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Wrap(
        children: [
          Text(text),
          InkWell(
            child: Text(
              textButton,
              style: const TextStyle(
                color: ColorsViews.textPink,
                fontWeight: FontWeight.bold
              ),
            ),
            onTap: () {
              if(textButton == 'Iniciar sesión'){
                Navigator.pushNamed(context, 'login');
              }
              else if(textButton == 'Regístrate'){
                Navigator.pushNamed(context, 'register');
              }
              else {

              }
            },
            
          ),
        ],
      ),
    );
  }
}

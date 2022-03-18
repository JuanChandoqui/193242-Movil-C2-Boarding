import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class TextButtonsUsers extends StatelessWidget {
  const TextButtonsUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30, child: textButtonUser('Entrar como invitado',ColorsViews.textPink)),
        SizedBox(height: 30, child: textButtonUser('Entrar como vendedor', ColorsViews.buttonMainColor)),
        textButtonLogin(context)
      ],
    );
  }

  Row textButtonLogin(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '¿Ya tienes una cuenta?', 
            style: TextStyle(
              color: ColorsViews.textCenterColor,
              fontSize: 13
            )
          ),

          TextButton(
            onPressed: () => Navigator.pushNamed(context, 'login'),

            child: const Text(
              'Iniciar sesión', 
              style: TextStyle(
                color: ColorsViews.textPink,
                fontSize: 13
              ),
            )
          )
        ],
      );
  }

  TextButton textButtonUser(String text, Color color) {
    return TextButton(
        onPressed: () => {}, 
        child: Text(
          text, 
          style: TextStyle(
            color: color,
            fontSize: 13
          ),
        )
      );
  }
}

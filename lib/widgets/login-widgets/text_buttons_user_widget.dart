import 'package:flutter/material.dart';

class TextButtonsUsers extends StatelessWidget {
  const TextButtonsUsers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30, child: textButtonUser('Entrar como invitado',const Color(0XFFFC1660))),
        SizedBox(height: 30, child: textButtonUser('Entrar como vendedor',const Color(0XFF7BA95E))),
        textButtonLogin()
      ],
    );
  }

  Row textButtonLogin() {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            '¿Ya tienes una cuenta?', 
            style: TextStyle(
              color: Color(0XFF5A5E66),
              fontSize: 13
            )
          ),

          TextButton(
            onPressed: () => {}, 
            child: const Text(
              'Iniciar sesión', 
              style: TextStyle(
                color: Color(0XFFFC1660),
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

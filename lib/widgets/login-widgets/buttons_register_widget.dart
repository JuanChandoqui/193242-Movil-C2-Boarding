import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ButtonsRegister extends StatelessWidget {
  const ButtonsRegister({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        elevatedButton(context, FontAwesomeIcons.google, 'Continuar con Google', const Color(0XFF3169f5), Colors.white, Colors.transparent),
        const SizedBox(height: 30),
        elevatedButton(context, Icons.facebook, 'Continuar con Facebook', const Color(0xFF324fa5), Colors.white, Colors.transparent),
        const SizedBox(height: 50),
        elevatedButton(context, Icons.email, 'Registrarse con e-mail', Colors.white, const Color(0XFF64686f), const Color(0XFF64686f))
      ],
    );
  }

  ElevatedButton elevatedButton(BuildContext context, IconData icondata, String text, Color colorBackground, Color colorText, Color borderColor) {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40), 
            side: BorderSide(color: borderColor)
          ),
          primary: colorBackground,
        ),
        onPressed: () => {
          if(text == 'Registrarse con e-mail'){
            Navigator.pushNamed(context, 'register')
          }
        }, 
        child: SizedBox(
          width: 300,
          height: 48,
          child: Row(
            children: [
              const SizedBox(width: 10),
              FaIcon(icondata, color: colorText),
              const SizedBox(width: 50),
              Text(
                text, 
                style: TextStyle(
                  color: colorText,
                  fontSize: 14,
                  fontWeight: FontWeight.bold
                )
              )
            ],
          ),
        )

      );
  }
}
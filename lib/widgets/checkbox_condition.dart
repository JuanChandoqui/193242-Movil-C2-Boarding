import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class CheckBoxScreen extends StatefulWidget {
   
  const CheckBoxScreen({Key? key}) : super(key: key);

  @override
  State<CheckBoxScreen> createState() => _CheckBoxScreenState();
}

class _CheckBoxScreenState extends State<CheckBoxScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    Color getColor(Set<MaterialState> states) {
      const Set<MaterialState> interactiveStates = <MaterialState>{
        MaterialState.pressed,
        MaterialState.hovered,
        MaterialState.focused,
      };
      if (states.any(interactiveStates.contains)) {
        return Colors.blue;
      }
      return const Color(0xFF898989);
    }

    return Row(
      children: [
        Checkbox(
          shape: const CircleBorder(),
          checkColor: Colors.transparent,
          fillColor: MaterialStateProperty.resolveWith(getColor),
          value: isChecked,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
          },
        ),
        const Flexible(
          child: ConditionText(),
        ),
       
      ],
    );
  }
}

class ConditionText extends StatelessWidget {
  const ConditionText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
      children: [
        const TextSpan(
          text: 'Al registrarme, acepto los ',
          style: TextStyle(
            color: Colors.black
          ),
        ),

        TextSpan(
          text:  'términos y condiciones ',
          style: const TextStyle(
            color: Color(0xFFFC1460)
          ),
          recognizer: TapGestureRecognizer()
          ..onTap = () => print('termino y condiciones')
        ),

        const TextSpan(
          text: 'y la ',
          style: TextStyle(
            color: Colors.black
          ),
        ),

         TextSpan(
          text:  'política de privacidad',
          style: const TextStyle(
            color: Color(0xFFFC1460)
          ),
          recognizer: TapGestureRecognizer()
          ..onTap = () => print('politica de privacidad'),
        ),
      ],
    )
    );
  }
}
import 'package:flutter/material.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String label;
  final String hintText;
  final IconData? iconData;
  final bool helpTextEnabled;

  const TextFormFieldCustom({
    Key? key, 
    required this.label, 
    required this.hintText,
    required this.helpTextEnabled,
    this.iconData
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    String labelHelpText = 'Ingrese su correo eléctronico registrado y le enviaremos un correo electrónico que contiene un enlace para restablecer su contraseña.';

    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
      borderRadius: BorderRadius.circular(15),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5,), 

        TextFormField(
          decoration:  InputDecoration(
            suffixIcon: 
            iconData != null ? Icon(iconData) 
            : null,
            hintText: hintText,
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            helperText: helpTextEnabled ? labelHelpText : null,
            helperMaxLines: 4,
            helperStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
        
            )
          ),
        )
      ],
    );
  }
}
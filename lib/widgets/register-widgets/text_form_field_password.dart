import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class TextFormFieldPasswordScreen extends StatefulWidget {

  final bool helpTextEnabled;
  final bool showHelpPassword;
  final TextEditingController controller;
   
  const TextFormFieldPasswordScreen({
    Key? key, 
    required this.helpTextEnabled, 
    required this.showHelpPassword,
    required this.controller,
  }) : super(key: key);

  @override
  State<TextFormFieldPasswordScreen> createState() => _TextFormFieldPasswordScreenState();
}

class _TextFormFieldPasswordScreenState extends State<TextFormFieldPasswordScreen> {

  late bool _passwordVisible;

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: ColorsViews.colorGray),
      borderRadius: BorderRadius.circular(15),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Password',
          textAlign: TextAlign.end,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        const SizedBox(height: 5,), 

        TextFormField(
          controller: widget.controller,
          obscureText: !_passwordVisible,
          onChanged: (text){
            // widget.controller.text = text;
            print(text);
          },
          decoration:  InputDecoration(
            suffixIcon:  IconButton(
              icon: Icon(
                Icons.visibility,
                color: _passwordVisible ? Colors.blue : ColorsViews.textCenterColor,
              ),
              onPressed: (){
                _passwordVisible = !_passwordVisible;
                setState(() {});
              }, 
            ) ,
            hintText: 'Contraseña',
            focusedBorder: outlineInputBorder,
            enabledBorder: outlineInputBorder,
            helperText: widget.helpTextEnabled 
            ?'La contraseña debe contener caracteres, números y simbolos con un minimo de 6 caracteres.'
            : null,
            helperMaxLines: 2,
            helperStyle: const TextStyle(
              overflow: TextOverflow.ellipsis,
        
            )
          ),
        ),
        if (widget.showHelpPassword)
          Padding(
            padding: EdgeInsets.only(left: size.width * 0.3),
            child: TextButton(
              child: const Text(
                '¿Has olvidado tu contraseña?',
                style: TextStyle(
                  color: ColorsViews.textPink,
                  fontWeight: FontWeight.bold
                ),
              ),
              
              onPressed: ()=> Navigator.pushNamed(context, 'reclame_password')
            ),
          )     
      ],
    );
  }
}
import 'package:flutter/material.dart';

class TextFormFieldPasswordScreen extends StatefulWidget {

  final bool helpTextEnabled;
  final bool showHelpPassword;
   
  const TextFormFieldPasswordScreen({
    Key? key, 
    required this.helpTextEnabled, 
    required this.showHelpPassword
  }) : super(key: key);

  @override
  State<TextFormFieldPasswordScreen> createState() => _TextFormFieldPasswordScreenState();
}

class _TextFormFieldPasswordScreenState extends State<TextFormFieldPasswordScreen> {

  late bool _passwordVisible;
  final TextEditingController _userPasswordController = TextEditingController();

  @override
  void initState() {
    _passwordVisible = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    var outlineInputBorder = OutlineInputBorder(
      borderSide: const BorderSide(color: Color(0xFFE0E0E0)),
      borderRadius: BorderRadius.circular(15),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      // mainAxisAlignment: MainAxisAlignment.end,
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
          controller: _userPasswordController,
          obscureText: !_passwordVisible,
          decoration:  InputDecoration(
            suffixIcon:  IconButton(
              icon: Icon(
                Icons.visibility,
                color: _passwordVisible ? Colors.blue :const Color(0xFF898989),
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
                  color: Color(0xFFFC1460),
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
import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

import '../widgets/appbar_custom.dart';
import '../widgets/bottom_button_custom.dart';
import '../widgets/custom_button_app.dart';
import '../widgets/text_form_field_custom.dart';
import '../widgets/text_form_field_password.dart';

class LoginScreen extends StatelessWidget {
   
  const LoginScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {

    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBarCustom('Iniciar Sesión'),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.07),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Expanded(
                flex: 2,
                child:  Center(
                  child: Text(
                    'Inicia sesión con tu cuenta para continuar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: ColorsViews.textCenterColor,
                    ),
                  )
                )
              ),
              Expanded(
                flex: 6,
                child: Form(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                          
                        const TextFormFieldCustom(
                          label: 'Correo Electrónico', 
                          hintText: 'Dirección de correo',
                          helpTextEnabled: false,
                        ),
                      
                        SizedBox(height: size.height * 0.03),
                      
                        const TextFormFieldPasswordScreen(
                          helpTextEnabled: false,
                          showHelpPassword: true,
                        ),                       
                      ],
                    ),
                  ),
                ),
              ),
          
              const Expanded(
                flex: 2,
                child: SizedBox(),
              ),
          
              Expanded(
                flex: 1,
                child: CustomButtonApp(size: size, textButton: 'Ingresar'),
              ),
              const Expanded(
                flex: 1,
                child: BottomButtonCustom(
                  text: '¿Todavía no tienes una cuenta? ',
                  textButton: 'Regístrate',
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}

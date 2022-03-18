import 'package:flutter/material.dart';
import 'package:mvp_all/widgets/bottom_button_custom.dart';

import '../widgets/appbar_custom.dart';
import '../widgets/checkbox_condition.dart';
import '../widgets/custom_button_app.dart';
import '../widgets/text_form_field_custom.dart';
import '../widgets/text_form_field_password.dart';

class RegisterScreenScreen extends StatelessWidget {
   
  const RegisterScreenScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBarCustom('Regístrate'),
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
                    'Crea una cuenta para empezar a usar la app',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF757575),
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
                          label: 'Nombre', 
                          hintText: 'Nombre Completo',
                          helpTextEnabled: false,
                        ),
                      
                        SizedBox(height: size.height * 0.03), 
                            
                        const TextFormFieldCustom(
                          label: 'Correo Electrónico', 
                          hintText: 'Dirección de correo',
                          helpTextEnabled: false,
                        ),
                      
                        SizedBox(height: size.height * 0.03),
                      
                        const TextFormFieldPasswordScreen(
                          helpTextEnabled: true,
                          showHelpPassword: false,
                        ),                       
                      ],
                    ),
                  ),
                ),
              ),
          
              const Expanded(
                flex: 2,
                child: CheckBoxScreen(),
              ),
          
              Expanded(
                flex: 1,
                child: CustomButtonApp(size: size, textButton: 'Crear Cuenta'),
              ),
              const Expanded(
                flex: 1,
                child: BottomButtonCustom(
                  text: '¿Ya tienes una cuenta? ',
                  textButton: 'Iniciar sesión',
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
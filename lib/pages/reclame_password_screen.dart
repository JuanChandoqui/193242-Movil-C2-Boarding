import 'package:flutter/material.dart';

import '../widgets/appbar_custom.dart';
import '../widgets/bottom_button_custom.dart';
import '../widgets/checkbox_condition.dart';
import '../widgets/custom_button_app.dart';
import '../widgets/text_form_field_custom.dart';
import '../widgets/text_form_field_password.dart';

class ReclamePasswordScreen extends StatelessWidget {
   
  const ReclamePasswordScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBarCustom('Recuperar contraseña'),
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
                    'Ingresa tu email para reestablecer tu contraseña',
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
                      children: const [                    
                        TextFormFieldCustom(
                          label: 'Correo Electrónico', 
                          hintText: 'Dirección de correo',
                          helpTextEnabled: true,
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
                child: CustomButtonApp(size: size, textButton: 'Enviar Solicitud'),
              ),
              const Expanded(
                flex: 1,
                child: SizedBox()
              )
            ],
          ),
        ),
      )
    );
  }
}
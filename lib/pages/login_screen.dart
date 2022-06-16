import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

import '../widgets/customs-widgets/appbar_custom.dart';
import '../widgets/customs-widgets/bottom_button_custom.dart';
import '../widgets/custom_button_app.dart';
import '../widgets/customs-widgets/text_form_field_custom.dart';
import '../widgets/register-widgets/text_form_field_password.dart';

class LoginScreen extends StatefulWidget {
   
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {  
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: appBarCustom('Iniciar Sesión', false),
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
                  onChanged: (){},
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                          
                        TextFormFieldCustom(
                          label: 'Correo Electrónico', 
                          hintText: 'Dirección de correo',
                          helpTextEnabled: false,
                          controller: controller1,
                        ),
                      
                        SizedBox(height: size.height * 0.03),
                      
                        TextFormFieldPasswordScreen(
                          helpTextEnabled: false,
                          showHelpPassword: true,
                          controller: controller2,
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
                child: CustomButtonApp(
                  size: size, 
                  textButton: 'Ingresar',
                  email: controller1.value.text,
                  password: controller2.value.text,
                ),
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

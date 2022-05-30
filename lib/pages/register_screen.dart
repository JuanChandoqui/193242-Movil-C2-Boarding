import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';
import 'package:mvp_all/widgets/customs-widgets/bottom_button_custom.dart';
import '../widgets/customs-widgets/appbar_custom.dart';
import '../widgets/register-widgets/checkbox_condition.dart';
import '../widgets/custom_button_app.dart';
import '../widgets/customs-widgets/text_form_field_custom.dart';
import '../widgets/register-widgets/text_form_field_password.dart';

class RegisterScreenScreen extends StatefulWidget {
   
  const RegisterScreenScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreenScreen> createState() => _RegisterScreenScreenState();
}

  final controller1 = TextEditingController();
  final controller2 = TextEditingController();
  final controller3 = TextEditingController();

class _RegisterScreenScreenState extends State<RegisterScreenScreen> {
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
                        
                        TextFormFieldCustom(
                          label: 'Nombre', 
                          hintText: 'Nombre Completo',
                          helpTextEnabled: false,
                          controller: controller1,
                        ),
                      
                        SizedBox(height: size.height * 0.03), 
                            
                        TextFormFieldCustom(
                          label: 'Correo Electrónico', 
                          hintText: 'Dirección de correo',
                          helpTextEnabled: false,
                           controller: controller2
                        ),
                      
                        SizedBox(height: size.height * 0.03),
                      
                        TextFormFieldPasswordScreen(
                          helpTextEnabled: true,
                          showHelpPassword: false,
                          controller: controller3,
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
                child: CustomButtonApp(
                  size: size, 
                  textButton: 'Crear Cuenta',
                  fullname: controller1.text,
                  email: controller2.text,
                  password: controller3.text,
                ),
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
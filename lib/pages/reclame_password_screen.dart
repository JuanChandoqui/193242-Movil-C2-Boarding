import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';
import '../widgets/customs-widgets/appbar_custom.dart';
import '../widgets/custom_button_app.dart';
import '../widgets/customs-widgets/text_form_field_custom.dart';

class ReclamePasswordScreen extends StatelessWidget {
   
  const ReclamePasswordScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final controller = TextEditingController();

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
                          label: 'Correo Electrónico', 
                          hintText: 'Dirección de correo',
                          helpTextEnabled: true,
                          controller: controller,
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
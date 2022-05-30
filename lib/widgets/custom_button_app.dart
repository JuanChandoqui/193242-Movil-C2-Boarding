import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';
import 'package:provider/provider.dart';

import '../providers/checkbox_provider.dart';
import '../services/login.dart';
import '../services/register.dart';

class CustomButtonApp extends StatelessWidget {

  final Size size;
  final String textButton;
  final String? email;
  final String? fullname;
  final String? password;

  const CustomButtonApp({
    Key? key,
    required this.size,
    required this.textButton,
    this.email,
    this.fullname,
    this.password
  }) : super(key: key);

  

  @override
  Widget build(BuildContext context) {
    final checkBoxProvider = Provider.of<CheckBoxProvider>(context);

    
    return SizedBox(
      width: size.width * 0.9,
      height:  size.height * 0.5,
      child: ElevatedButton(
        child: Text(
          textButton,
          style: const TextStyle(
            fontSize: 16
          ),
        ),
        style: ElevatedButton.styleFrom(
          primary: ColorsViews.buttonMainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )
        ),

        onPressed: ()=>{
          if (textButton == 'Crear Cuenta'){

            if (fullname == '' || email == '' || password == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1000),
                              content: Text('Rellene los campos'),
                            ),
                          )
                        } 
                        else {
                            if(checkBoxProvider.getIsChecked != true) {
                              ScaffoldMessenger.of(context).showSnackBar(
                              const SnackBar(
                                duration: Duration(milliseconds: 1000),
                                content: Text('Acepte los condiciones y terminos'),
                              ),
                          )
                            }
                            else {
                              register(fullname!, email!, password!).then((value) {
                                if (value) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      duration: Duration(milliseconds: 1000),
                                      content: Text('Usuario creado'),
                                    ),
                                  );

                                  Navigator.pushReplacementNamed(context, 'login');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      duration: Duration(milliseconds: 1000),
                                      content: Text('No se ha podido registrar'),
                                    ),
                                  );
                                }
                              })
                            }
                        }
          }
          else if (textButton == 'Ingresar'){
            if (email == '' || password == '') {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              duration: Duration(milliseconds: 1000),
                              content: Text('Rellene los campos'),
                            ),
                          )
                        } else {
                          login(email!, password!).then((value) {
                                if (value['status'] == 'success') {
                                  Navigator.pushReplacementNamed(
                                      context, 'menuview');
                                } else {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      duration: Duration(milliseconds: 1000),
                                      content: Text('Contraseña incorrecta'),
                                    ),
                                  );
                                }
                              })
                        }
          }
          
        }
      ),  
    );
  }
}
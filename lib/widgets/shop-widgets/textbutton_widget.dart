import 'package:flutter/material.dart';
import 'package:mvp_all/providers/textbutton_provider.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';
import 'package:provider/provider.dart';

class TextButtonProductos extends StatelessWidget {
  final String textButton;
  final bool isSelected;
  final Color backgroundColor;


  const TextButtonProductos({
    Key? key,
    required this.textButton,
    required this.isSelected,
    required this.backgroundColor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textButtonProvider = Provider.of<TextButtonProvider>(context);

    return SizedBox(
      height: 25,
      child: TextButton(
        style: TextButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 5),
          primary: isSelected ? ColorsViews.colorWhiteGeneral : ColorsViews.colorGray,
          backgroundColor: isSelected ? backgroundColor : Colors.transparent,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold
          )
        ),
        child:  Text(textButton),
        onPressed: ()=>{
          if(textButton == 'Alimento'){
            textButtonProvider.setIsSelectedButtonAlimento(true),
            textButtonProvider.setIsSelectedButtonAccesorios(false),
            textButtonProvider.setIsSelectedButtonRecompensas(false),
          }
          else if(textButton == 'Accesorios'){
            textButtonProvider.setIsSelectedButtonAlimento(false),
            textButtonProvider.setIsSelectedButtonAccesorios(true),
            textButtonProvider.setIsSelectedButtonRecompensas(false),
          }
          else if(textButton == 'Recompensas'){
            textButtonProvider.setIsSelectedButtonAlimento(false),
            textButtonProvider.setIsSelectedButtonAccesorios(false),
            textButtonProvider.setIsSelectedButtonRecompensas(true),
          }

          else if(textButton == 'Paseadores'){
            textButtonProvider.setIsSelectedButtonPaseadores(true),
            textButtonProvider.setIsSelectedButtonRestaurantes(false),
            textButtonProvider.setIsSelectedButtonFotoEstudio(false),
          }
          else if(textButton == 'Restaurantes'){
            textButtonProvider.setIsSelectedButtonPaseadores(false),
            textButtonProvider.setIsSelectedButtonRestaurantes(true),
            textButtonProvider.setIsSelectedButtonFotoEstudio(false),
          }
          else if(textButton == 'Foto estudio'){
            textButtonProvider.setIsSelectedButtonPaseadores(false),
            textButtonProvider.setIsSelectedButtonRestaurantes(false),
            textButtonProvider.setIsSelectedButtonFotoEstudio(true),
          }
        }
      ),
    );
  }
}


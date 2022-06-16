import 'package:flutter/material.dart';

import '../../styles/Colors/ColorsView.dart';
import 'drop_button_custom.dart';

class InformationUser extends StatelessWidget {
  const InformationUser({
    Key? key,
    required this.size,
    required this.listItem1,
    required this.listItem2,
  }) : super(key: key);

  final Size size;
  final List<String> listItem1;
  final List<String> listItem2;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: SizedBox(
            height: size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.only(left: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: const [
                      Text('Hola ', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22)),
                      Text('Juan', style: TextStyle(color: ColorsViews.colorSplash, fontWeight: FontWeight.bold, fontSize: 22)),
                      Text(',', style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),

                  Row(
                    children: [
                      const Icon(Icons.pets_outlined, color: ColorsViews.buttonMainColor,),
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            const Text('Entregar ahora', style: TextStyle(color: ColorsViews.textCenterColor, fontSize: 10)),
                            DropDownButtonCustom(listItem: listItem1, fontSizeText: 16),                                  
      
                          ],
                        ),
                      )
                    ],
                  )

                ],
              ),
            )
          ),
        ),
        Expanded(
          flex: 4,
          child: SizedBox(
            height: size.height * 0.15,
            child: Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Image.asset('assets/onBoarding/B5.png', height: 65),
                  Container(
                    color: ColorsViews.colorGray,
                    width: 150,
                    child: Center(child: DropDownButtonCustom(listItem: listItem2, fontSizeText: 12,))
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}


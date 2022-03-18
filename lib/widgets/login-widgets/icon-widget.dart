import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class IconWidget extends StatelessWidget {
  const IconWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children:[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            const Text('ALL FOR', style: TextStyle(fontSize: 40, color: ColorsViews.textCenterColor),),         
            Row(
              children: const [
                Text('MY ', style: TextStyle(fontSize: 60, color: ColorsViews.textCenterColor, fontWeight: FontWeight.bold)),
                Text('PET', style: TextStyle(fontSize: 60, color: ColorsViews.textPink,  fontWeight: FontWeight.bold))
              ],
            )
            
          ],
        ),
        const Padding(padding: EdgeInsets.zero),
        const Image(image: AssetImage('assets/image/icon-Pet.png'), height: 110, width: 120,)
      ],
    );
  }
}
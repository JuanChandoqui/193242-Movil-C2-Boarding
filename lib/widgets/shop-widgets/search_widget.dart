import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children:  [
        Expanded(
          flex: 7,
          child:  Container(
            height: 30,
            decoration: BoxDecoration(
              color: ColorsViews.colorGray,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(
                color: ColorsViews.colorGray,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  suffixIcon: IconButton(
                    onPressed: ()=>{}, 
                    padding: const EdgeInsets.all(0),
                    icon: const Icon(Icons.search)
                  ),
                  hintText: 'Buscar productos o servicios...',
                  hintStyle: const TextStyle(
                    fontSize: 14,
                  )
                  
                ),
              ),
            ),
          ),
        ),

        const SizedBox(width: 10),

        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: ()=> print('CLICK BUTTON TUNE'),
            child: Container(
              height: size.height * 0.04,
              width:  size.width * 0.04,
              child: const Icon(Icons.tune_outlined, color: ColorsViews.colorWhiteGeneral),
              decoration: const BoxDecoration(
                color: ColorsViews.textPink,
                shape: BoxShape.circle
              ),
            ),
          ),
        )
      ],
    );
  }
}
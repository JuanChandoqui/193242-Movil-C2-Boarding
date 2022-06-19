import 'package:flutter/material.dart';
import 'package:mvp_all/models/doc_model.dart';
import 'package:mvp_all/widgets/shop-widgets/list_services_widget.dart';
import 'package:mvp_all/widgets/shop-widgets/textbutton_widget.dart';

class CatalogWidget extends StatelessWidget {
  const CatalogWidget({
    Key? key,
    required this.size, 
    required this.title, 
    required this.textButton1, 
    required this.textButton2, 
    required this.textButton3,
    required this.backgroundColorButton,
    required this.titleColor, 
    required this.isSelectedOption1, 
    required this.isSelectedOption2, 
    required this.isSelectedOption3,
    this.listDoc
  }) : super(key: key);

  final Size size;
  final String title;
  final String textButton1;
  final String textButton2;
  final String textButton3;
  final Color backgroundColorButton;
  final Color titleColor;
  final bool isSelectedOption1;
  final bool isSelectedOption2;
  final bool isSelectedOption3;
  final Future<List<DocModel>>? listDoc;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Text(
                title,
                style: const TextStyle(
                  fontSize: 20
                ),
              ),
              const SizedBox(width: 20),
              TextButtonProductos(
                textButton: textButton1, 
                isSelected: isSelectedOption1, 
                backgroundColor: backgroundColorButton
              ),
              const SizedBox(width: 15),
              TextButtonProductos(
                textButton: textButton2, 
                isSelected: isSelectedOption2, 
                backgroundColor: backgroundColorButton
              ),
              const SizedBox(width: 15),
              TextButtonProductos(
                textButton: textButton3, 
                isSelected: isSelectedOption3, 
                backgroundColor: backgroundColorButton
              ),                                   
            ],
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 20),
          child: ListServicesWidget(
            size: size, 
            titleColor: titleColor,
            listDoc: listDoc!,
          ),
        ),
      ],
    );
  }
}

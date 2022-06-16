import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class ListServicesWidget extends StatelessWidget {
  const ListServicesWidget({
    Key? key,
    required this.size,
    required this.titleColor
  }) : super(key: key);

  final Size size;
  final Color titleColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size.width,
      height: size.height * 0.38, 
      child: ListView.separated(
        separatorBuilder: (context, index)  {
          return const SizedBox(width: 10);
        },
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,
        primary: false,
        itemCount: 4,
        itemBuilder: (context, index) {
          return SizedBox(
            width:  size.width * 0.45,
            child: Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width:  size.width * 0.4,
                    height: size.height * 0.25,
                    child: Container( 
                      margin: const EdgeInsets.only(left: 10, top: 10),                         
                      decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(15)
                      ),
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, top: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Tistabene',
                          style: TextStyle(
                            color: titleColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 15
                          ),
                        ),

                        const SizedBox(height: 10),

                        const Text(
                          'Descripción',
                          style: TextStyle(
                            color: Color(0xFFCCCCCC),
                            fontSize: 14
                          ),
                        ),

                        const SizedBox(height: 10),

                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: const [
                              Text(
                                '\$125',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400
                                ),
                              ),
                              Text(
                                '10% Desc.',
                                style: TextStyle(
                                  color: ColorsViews.textPink,
                                  fontWeight: FontWeight.w400
                                ),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

class CarouselImagesWidget extends StatelessWidget {
  const CarouselImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 100,
      width: 300,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorsViews.textBoarding)
        ),
        child: ListView.builder(
          itemBuilder: (context, index){
            return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: GestureDetector(
                  onTap: () => print('CLICK EVENT'),
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        'https://picsum.photos/id/$index/100/200',               
                      ),           
                    radius: 30,
                  ),
                ),
              );
          },
          itemCount: 10,
          scrollDirection: Axis.horizontal,
        ),
      ),
    );
  }
}
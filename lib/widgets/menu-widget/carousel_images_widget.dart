import 'package:flutter/material.dart';

class CarouselImagesWidget extends StatelessWidget {
  const CarouselImagesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Card(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SizedBox(
          height: 100,
          width: double.infinity,
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.transparent)
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
        ),
      ),
    );
  }
}
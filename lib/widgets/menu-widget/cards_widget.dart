import 'package:flutter/material.dart';

class CardsWidget extends StatelessWidget {
  const CardsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int countCard = 2;
    return SizedBox(
      width: 300,
      height: 150,
      child: GridView.count(
        crossAxisCount: countCard,
        children: List.generate(countCard, (index) {
        return Card(
          child: InkWell(
            onTap: () => print('CLICK SOBRE LA CARD'),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Image(
                  image: NetworkImage('https://picsum.photos/id/10/500/200'),
                  height: 50,
                  width: 200,
                ),
                SizedBox(height: 10,),
                Text(       
                  'Duis magna quis et nisi tempor consequat elit. Ullamco Lorem anim consectetur officia dolor aliqua officia in irure esse. Fugiat tempor sunt laborum nisi enim laborum aute reprehenderit proident reprehenderit. Enim est ullamco velit ad laborum sunt labore velit. Sint esse adipisicing deserunt consequat elit reprehenderit ex quis est esse.',
                  style: TextStyle(fontSize: 8),
                  textAlign: TextAlign.center,
                  maxLines: 6,
                  )
              ],
            ),
          ),
        // color: Colors.amber,
        );
      }),
      ),
    );
  }
}
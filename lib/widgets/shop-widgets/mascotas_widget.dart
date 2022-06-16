import 'package:flutter/material.dart';
import '../../styles/Colors/ColorsView.dart';

class Mascotas extends StatelessWidget {
  const Mascotas({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
      children: [
        const Text('Mis Mascotas', style: TextStyle(fontWeight: FontWeight.bold),),
        const SizedBox(height: 10),
        SizedBox(
          width: size.width,
          height: 100,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://t2.uc.ltmcdn.com/es/posts/9/5/5/10_cosas_que_los_perros_pueden_predecir_te_sorprenderas_43559_600.jpg'),
                    radius: 30,
                  ),
                  SizedBox(height: 5,),
                  Text('Mi perro')
                ],
              ),

              const SizedBox(width: 10,),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  
                  children: [                           
                    GestureDetector(
                      onTap: ()=> print('CLICK EN AGREGAR MASCOTA'),
                      child: Container(
                        width: 60,
                        height: 60,
                        child: const Center(
                          child: Icon(Icons.add, color: Color(0xFFB5B5B5),)
                        ),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: ColorsViews.colorGray,
                        ),
                      ),
                    ),
                    
                    const SizedBox(width: 10),
                    
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child:  SizedBox(
                        width: 60,
                        child: Text(
                          'Agregar mascota', 
                          maxLines: 2,
                          style: TextStyle(
                            color: Color(0xFFB5B5B5),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ]),
          ),
      ],
    );
  }
}
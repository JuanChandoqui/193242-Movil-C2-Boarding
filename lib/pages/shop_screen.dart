import 'package:flutter/material.dart';
import 'package:mvp_all/providers/cardservices_provider.dart';
import 'package:mvp_all/providers/textbutton_provider.dart';
import 'package:mvp_all/services/ad_service.dart';
import 'package:mvp_all/widgets/customs-widgets/appbar_custom.dart';
import 'package:mvp_all/widgets/shop-widgets/bottom_canvas_widget.dart';
import 'package:mvp_all/widgets/shop-widgets/card_services_widget.dart';
import 'package:mvp_all/widgets/shop-widgets/catalog_widget.dart';
import 'package:mvp_all/widgets/shop-widgets/search_widget.dart';
import 'package:provider/provider.dart';
import '../styles/Colors/ColorsView.dart';
import '../widgets/shop-widgets/information_user_widget.dart';
import '../widgets/shop-widgets/mascotas_widget.dart';

class ShopScreen extends StatelessWidget {
   
  const ShopScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final cardServicesProvider = Provider.of<CardServicesProvider>(context);
    final textButtonProvider = Provider.of<TextButtonProvider>(context);
    final listItem1 = ['Calle 10 9', 'Two', 'Free', 'Four'];
    final listItem2 = ['Entrega a domicilio', 'Entrega en línea'];

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: appBarCustom('Tienda', true),
        body: TabBarView(
          children: [
            const Center(
              child: Text('VIEW 1'),
            ),

            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  InformationUser(
                    size: size, 
                    listItem1: listItem1, 
                    listItem2: listItem2
                  ),

                  const Divider(height: 0, thickness: 1, color: ColorsViews.colorGray),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
                    child: Mascotas(size: size),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5, top: 10),
                    child: Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: (){
                              cardServicesProvider.setIsSelectedCard1(true);
                              cardServicesProvider.setIsSelectedCard2(false);
                            },
                            child: CardServices(
                              isSelected: cardServicesProvider.getIsSelectedCard1,
                              size: size,
                              imageUrl: 'assets/onBoarding/B5.png',
                              textImage: 'PRODUCTOS',
                            ),
                          )
                        ),

                        Expanded(
                          flex: 1,
                          child: GestureDetector(
                            onTap: () {
                              cardServicesProvider.setIsSelectedCard1(false);
                              cardServicesProvider.setIsSelectedCard2(true);
                            },
                            child: CardServices(
                              isSelected: cardServicesProvider.getIsSelectedCard2,
                              size: size,
                              imageUrl: 'assets/onBoarding/B1.png',
                              textImage: 'SERVICIOS',
                            ),
                          )
                        )
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 15),
                    child: SearchWidget(size: size),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15, top: 30, bottom: 30),
                    child:  FutureBuilder<dynamic>(
                      future: getAd(),
                      builder: (context, snapshot){
                        if(snapshot.hasData){
                          print('SNAPSHOT: ${snapshot.data}');
                          return Text('${snapshot.data}');
                        } else {
                          print('NO HAY INFORMACIÓN');
                          return const Text('NOT IMAGE FOUND');
                        }
                      },
                      initialData: Center(child: CircularProgressIndicator()),
                      // initialData: SizedBox(
                      //   width:  size.width,
                      //   height: size.height * 0.2,
                      //   child: const Image(image: AssetImage('assets/image/anuncio.png')),
                      // ),
                      // child: SizedBox(
                      //   width:  size.width,
                      //   height: size.height * 0.2,
                      //   child: const Image(image: AssetImage('assets/image/anuncio.png')),
                      // ),
                    ),
                  ),

                  const Divider(height: 0, thickness: 1, color: ColorsViews.colorGray),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                    child: CatalogWidget(
                      title: 'Productos cerca', 
                      textButton1: 'Alimento',
                      textButton2: 'Accesorios',
                      textButton3: 'Recompensas', 
                      backgroundColorButton: ColorsViews.buttonMainColor,
                      titleColor: ColorsViews.buttonMainColor,
                      size: size,
                      isSelectedOption1: textButtonProvider.getIsSelectedAlimento,
                      isSelectedOption2: textButtonProvider.getIsSelectedButtonAccesorios,
                      isSelectedOption3: textButtonProvider.getIsSelectedButtonRecompensas,
                    ),
                  ),

                  const Divider(height: 10, thickness: 1, color: ColorsViews.colorGray),

                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10, top: 20, bottom: 20),
                    child: CatalogWidget(
                      title: 'Servicios cerca', 
                      textButton1: 'Paseadores',
                      textButton2: 'Restaurantes',
                      textButton3: 'Foto estudio',
                      backgroundColorButton: ColorsViews.textBoarding,
                      titleColor: ColorsViews.textBoarding,
                      size: size,
                       isSelectedOption1: textButtonProvider.getIsSelectedButtonPaseadores,
                      isSelectedOption2: textButtonProvider.getIsSelectedButtonRestaurantes,
                      isSelectedOption3: textButtonProvider.getIsSelectedButtonFotoEstudio,
                    ),
                  ),
                ],
              ),
            ),

            const Center(
              child: Text('VIEW 3'),
            )
          ],
        ),
        bottomNavigationBar: SizedBox(
          height: 70,
          width: size.width,
          child: Stack(
            children: [
              CustomPaint(
                painter: BottomCanvas(),
                size: Size(size.width, size.width *0.5),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                child: const TabBar( 
                  indicatorColor: Colors.transparent,
                  labelColor: ColorsViews.textPink,
                  tabs: [
                    Tab(icon: Icon(Icons.home_rounded, color: ColorsViews.colorWhiteGeneral,)),
                    Tab(icon: Icon(Icons.assignment_outlined, color: ColorsViews.colorWhiteGeneral,),),
                    Tab(icon: Icon(Icons.pets_outlined, color: ColorsViews.colorWhiteGeneral,),),
                  ]
                ),
              )
            ]
          ),
        ),
      ),
    );
  }
}
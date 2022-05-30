import 'package:flutter/material.dart';
import 'package:mvp_all/pages/on_boarding.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';
import 'package:mvp_all/widgets/menu-widget/carousel_images_widget.dart';
import '../widgets/menu-widget/cards_widget.dart';
import '../widgets/menu-widget/drawer_widget.dart';
import '../widgets/menu-widget/on_boarding_widget.dart';

class MenuView extends StatelessWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return DefaultTabController(
      initialIndex: 1,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorsViews.textBoarding,
          foregroundColor: ColorsViews.textPink,
        ),

        bottomNavigationBar: const TabBar(  
          indicatorColor: ColorsViews.textPink,
          labelColor: ColorsViews.textPink,
          tabs: [
            Tab(icon: Icon(Icons.exit_to_app)),
            Tab(icon: Icon(Icons.home),),
            Tab(icon: Icon(Icons.person),),
          ]
        ),

        body: TabBarView(
          children: [
            const Center(
              child: Text("PRIMERA VISTA"),
            ),

            SingleChildScrollView(
              child: Column(
                children: const [
                  SizedBox(height: 10),
                  OnBoardingWidget(),
                  CarouselImagesWidget(),
                  SizedBox(height: 20),
                  CardsWidget(),
                  SizedBox(height: 10),
                  CardsWidget(),
                  SizedBox(height: 10),
                  CardsWidget(),
                ],
              ),
            ),

            const Center(
              child: Text("TERCERA VISTA"),
            ),
          ],
        ),
      
        drawer: const DrawerWidget(),
      ),
    );
      
  }
}


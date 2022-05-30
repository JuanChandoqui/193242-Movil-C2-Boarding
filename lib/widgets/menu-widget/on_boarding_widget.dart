import 'package:flutter/material.dart';
import 'package:mvp_all/styles/Colors/ColorsView.dart';

import '../container_boarding.dart';


class OnBoardingWidget extends StatefulWidget {
  const OnBoardingWidget({Key? key}) : super(key: key);

  @override
  State<OnBoardingWidget> createState() => _OnBoardingWidgetState();
}

class _OnBoardingWidgetState extends State<OnBoardingWidget> {

  int _currentPageValue = 0;

  final PageController _pageController = PageController();

  List<Map<String,String>> boardingData = [
    {
      "image": "assets/onBoarding/B1.png",
    },
    {
      "image": "assets/onBoarding/B2.png",
    },
    {
      "image": "assets/onBoarding/B3.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
        height: 200,
        width: 300,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (page){
                  getChangePage(page);
                },
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        alignment: FractionalOffset.center,
                        image: NetworkImage(
                          'https://picsum.photos/id/$index/100/200',
                        ),
                      ),
                    ),
                  );
                },
                itemCount: boardingData.length,
              ),
            ),
            const SizedBox(height: 10),
        
            Expanded(
              flex: 1,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: 
                      List.generate(boardingData.length, (index) {
                        if(index == _currentPageValue) {
                          return createBarProgression(showIndicator: true);                             
                        } else {
                          return createBarProgression(showIndicator: false);
                        }
                      })                     
                  ),
                ],
              ),
            ),
          ],
        ),
      ); 
    
  }

  void getChangePage(int page) {
    _currentPageValue = page;
    setState(() {});
  }

  createBarProgression({required bool showIndicator}){
    return AnimatedContainer(

      duration: const Duration(milliseconds: 200),
      margin: const EdgeInsets.only(right: 9),
      height:5,
      width: showIndicator ? 24 : 14,
      decoration: BoxDecoration(
        color: showIndicator ? ColorsViews.textPink : ColorsViews.colorGray,
        borderRadius: BorderRadius.circular(10)
      ),
    );
  }

}

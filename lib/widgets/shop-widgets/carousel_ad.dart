import 'dart:async';
import 'package:flutter/material.dart';
import 'package:mvp_all/models/dtoImageCarousel.dart';
import 'package:mvp_all/services/ad_service.dart';

class CarouselAdImage extends StatefulWidget {
  final double height;
  final double width;

  const CarouselAdImage({
    Key? key,
    required this.height,
    required this.width
  }) : super(key: key);

  @override
  State<CarouselAdImage> createState() => _CarouselAdImageState();
}

final PageController _pageController = PageController( initialPage: 0);
Future<List<DtoImageCarousel>>? _carouselImage;

class _CarouselAdImageState extends State<CarouselAdImage> {

 @override
  void initState() {
    _carouselImage = getCarouselAdvert();

    Timer.periodic(const Duration(seconds: 5), (timer) {
      if (_carouselImage != null) {
        if (_pageController.hasClients) {
          if (_pageController.page!.toInt() == 0 || (_pageController.page!.toInt() != 0 && _pageController.page!.toInt() != 2)){
            _pageController.nextPage(
                duration: const Duration(milliseconds: 500),
                curve: Curves.fastOutSlowIn);
          } else if (_pageController.page!.toInt() == 2){
            _pageController.jumpToPage(0);
            _pageController.animateToPage(
              0,
              duration: const Duration(milliseconds: 500),
              curve: Curves.bounceOut
            );
          }
        }
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<DtoImageCarousel>>(
      future: _carouselImage,
      builder: (context, snapshot) {
        if(snapshot.hasData){
          return PageView.builder(
            controller: _pageController,
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return Image(
                image: NetworkImage(snapshot.data!.elementAt(index).url),
                width: widget.width,
                height: widget.height,
                fit: BoxFit.fill,
              );
            },

          );
        }

        else if (snapshot.hasError) {
          return Text('${snapshot.error}');
        }

        return const Center(child: CircularProgressIndicator());
      },

    );
  }
}
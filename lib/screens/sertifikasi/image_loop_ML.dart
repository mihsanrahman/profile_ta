import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/asset_locations.dart';

class ImageLoopML extends StatefulWidget {
  const ImageLoopML({super.key});

  @override
  State<ImageLoopML> createState() => _ImageLoopMLState();
}

class _ImageLoopMLState extends State<ImageLoopML> {
  List<String> imageML = [
    'ML1',
    'ML2',
    'ML3',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageML.length,
      itemBuilder: (context, index, realIndex) {
        final name = imageML[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(top: 12, left: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetLocations.imageLoca(name),
              fit: BoxFit.cover,
            ),
          ),
        );
      },
      options: CarouselOptions(
        autoPlayCurve: Curves.easeInOutCirc,
        autoPlayInterval: const Duration(seconds: 3),
        height: 162,
        viewportFraction: 0.81,
        enableInfiniteScroll: true,
        autoPlay: true,
        initialPage: 2,
      ),
    );
  }
}

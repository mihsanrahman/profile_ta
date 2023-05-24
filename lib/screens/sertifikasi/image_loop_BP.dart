import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../utils/asset_locations.dart';

class ImageLoopBP extends StatefulWidget {
  const ImageLoopBP({super.key});

  @override
  State<ImageLoopBP> createState() => _ImageLoopBPState();
}

class _ImageLoopBPState extends State<ImageLoopBP> {
  List<String> imageBP = [
    'BP1',
    'BP2',
    'BP3',
  ];
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: imageBP.length,
      itemBuilder: (context, index, realIndex) {
        final name = imageBP[index];
        return Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          margin: const EdgeInsets.only(top: 12, left: 12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetLocations.imageLoc(name),
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

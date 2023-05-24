import 'package:flutter/cupertino.dart';

class AssetLocations {
  static ImageProvider imageLocation(String imageName) {
    final location = AssetImage('assets/images/$imageName.png');
    return location;
  }
  static ImageProvider imageLoc(String imageBP) {
    final location = AssetImage('assets/images/$imageBP.png');
    return location;
  }
  static ImageProvider imageLoca(String imageML) {
    final location = AssetImage('assets/images/$imageML.png');
    return location;
  }
}

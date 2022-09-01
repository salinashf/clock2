import 'package:flutter/material.dart';

class SizeConfig {
  late MediaQueryData _mediaQueryData ;
  late double _screenWidth ;
  late double _screenHeight ;
  late double defaultSize ;
  late Orientation orientation ;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    _screenWidth = _mediaQueryData.size.width;
    _screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
  static double  get screenWidth => 100;
  static double get screenHeight => 200;
}

// Get the proportionate height as per screen size
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
  // 896 is the layout height that designer use
  // or you can say iPhone 11
  return (inputHeight / 896.0) * screenHeight;
}

// Get the proportionate height as per screen size
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
  // 414 is the layout width that designer use
  return (inputWidth / 414.0) * screenWidth;
}

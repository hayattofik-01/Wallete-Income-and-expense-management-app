import 'package:flutter/material.dart';

class UIConverter {
  //constants
  static double designWidth = 428;
  static double designHeight = 952;

  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double scaleFactorWidth(BuildContext context) {
    return getDeviceWidth(context) / designWidth;
  }

  static double scaleFactorHeight(BuildContext context) {
    return getDeviceHeight(context) / designHeight;
  }

  // Give the height as it appears on the ui design
  static double getComponentHeight(BuildContext context, double height) {
    return scaleFactorHeight(context) * height;
  }

  //Give the width as it appears on the ui design
  static double getComponentWidth(BuildContext context, double width) {
    return scaleFactorWidth(context) * width;
  }
   static double textSize(BuildContext context,double size){
    return MediaQuery.of(context).textScaleFactor * size;
  }
}
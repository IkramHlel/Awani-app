import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class SizeConfig {

  static double _screenWidth;
  static double _screenHeight;
  static double _blockSizeHorizantal = 0;
  static double _blockSizeVertical = 0;

  static double textMultiplier; 
  static double imageSizeMultiplier;
  static double heightMultiplier;

  void init(BoxConstraints constraints, Orientation orientation) {
    if (orientation == Orientation.portrait) {
      _screenWidth = constraints.maxWidth;
      _screenHeight = constraints.maxHeight;
    } else {
      _screenWidth = constraints.maxHeight;
      _screenHeight = constraints.maxWidth;
    }
    _blockSizeHorizantal = _screenWidth / 100;
    _blockSizeVertical = _screenHeight / 100;

    textMultiplier = _blockSizeVertical;
    imageSizeMultiplier = _blockSizeHorizantal;
    heightMultiplier = _blockSizeVertical;

     print('vertical ${_blockSizeVertical}');
     print('horizontal ${_blockSizeHorizantal}');
  }
}

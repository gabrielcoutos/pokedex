import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Utils{
  static Color getColorType(String type){
    Color color = Colors.white;
    switch (type.trim().toLowerCase()){
      case 'water':
        color = Color(0x6390F0);
        break;
      case 'fire':
        color = Color(0xffEE8130);
        break;
      case 'electric':
        color = Color(0xffF7D02C);
        break;
      case 'grass':
        color = Color(0xff7AC74C);
        break;
      case 'psychic':
        color = Color(0xffF95587);
        break;
      case 'bug':
        color = Color(0xffA6B91A);
        break;
      case 'rock':
        color = Colors.grey[600].withOpacity(0.4);
        break;
      case 'ground':
        color = Colors.brown.withOpacity(0.4);
        break;
      case 'fighting':
        color = Colors.brown[200].withOpacity(0.4);
        break;
      case 'dark':
        color = Colors.black45;
        break;
      default:
        color = Colors.white;
        break;
    }
    return color;
  }

}
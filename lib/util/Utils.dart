import 'dart:ui';

import 'package:flutter/material.dart';

abstract class Utils{
  static Color getColorType(String type){
    Color color = Colors.white;
    switch (type.trim().toLowerCase()){
      case 'water':
        color = Color(0xff6390F0);
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
        color = Color(0xffB6A136);
        break;
      case 'ground':
        color = Color(0xffE2BF65);
        break;
      case 'fighting':
        color = Color(0xffC22E28);
        break;
      case 'dark':
        color = Color(0xff705746);
        break;
      case 'normal':
        color = Color(0xffA8A77A);
        break;
      case 'poison':
        color = Color(0xffA33EA1);
        break;
      case 'flying':
        color = Color(0xffA98FF3);
        break;
      case 'dragon':
        color = Color(0xff6F35FC);
        break;
        case 'ice':
        color = Color(0xff96D9D6);
        break;
      case 'ghost':
        color = Color(0xff735797);
        break;
      default:
        color = Colors.white;
        break;
    }
    return color;
  }

}
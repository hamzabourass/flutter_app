
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GlobalParams{
  static List<Map<String, dynamic>> menus=[
    {"title":"Counter","icon":Icon(Icons.looks_one),"route":"/counter"},
    {"title":"Meteo","icon":Icon(Icons.cloud),"route":"/meteo"},
    { "title":"Gallery","icon":Icon(Icons.photo),"route":"/gallery"},
  ];
  static IconData getIcon(String iconName) {
    switch (iconName) {
      case 'looks_one':
        return Icons.looks_one;
      case 'cloud':
        return Icons.cloud;
      case 'photo':
        return Icons.photo;
    // Add more cases as needed for other icons
      default:
        return Icons.error; // Default icon for unknown cases
    }
  }
}
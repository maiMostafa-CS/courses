import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import '../util/colors.dart';

GButton gButton(icon,text) {
  return GButton(
    icon: icon,
    text: text.toString(),
    backgroundColor: ThemeColors.white,
    iconSize: 15,
    textStyle: const TextStyle(fontSize: 8),
  );
}

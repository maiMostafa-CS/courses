import 'package:courses/util/strings.dart';
import 'package:flutter/material.dart';

import '../util/colors.dart';

class Categories {
  String nameCourses;
  Icon icon;
  Categories({required this.nameCourses, required this.icon});
}

List<Categories> item = [
  Categories(
      nameCourses: UiStrings.design,
      icon: Icon(Icons.add_to_queue, size: 40, color: ThemeColors.green)),
  Categories(
      nameCourses: UiStrings.marketing,
      icon: Icon(Icons.add_to_queue, size: 40, color: ThemeColors.green)),
  Categories(
      nameCourses: UiStrings.sales,
      icon: Icon(Icons.add_to_queue, size: 40, color: ThemeColors.green)),
  Categories(
      nameCourses: UiStrings.hr,
      icon: Icon(Icons.add_to_queue, size: 40, color: ThemeColors.green)),
  Categories(
      nameCourses: UiStrings.account,
      icon: Icon(Icons.add_to_queue, size: 40, color: ThemeColors.green)),
  Categories(
      nameCourses: UiStrings.code,
      icon: Icon(Icons.add_to_queue, size: 40, color: ThemeColors.green)),
];


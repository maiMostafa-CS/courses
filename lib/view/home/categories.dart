import 'package:flutter/material.dart';
import '../../model/modelCategories.dart';
import '../../util/colors.dart';
import '../../util/strings.dart';

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

Widget categories() {
  return SizedBox(
      height: 100,
      width: double.infinity,
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          scrollDirection: Axis.horizontal,
          itemCount: item.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              height: 100,
              width: 100,
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ThemeColors.white,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  item[index].icon,
                  Text(
                    item[index].nameCourses,
                    style: const TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 10,
                    ),
                  ),
                ],
              ),
            );
          }));
}

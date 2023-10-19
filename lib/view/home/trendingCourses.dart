import 'package:flutter/material.dart';
import '../../model/modelCourses.dart';
import '../../util/colors.dart';
import '../../util/strings.dart';
import '../coursesDetails/coursesDetails.dart';

List<Courses> courses = [
  Courses(
      picCourses: "assets/download (5).jpg",
      picInstructor: "assets/person(2).jpg",
      nameCourses: UiStrings.uiUx,
      percent: .75,
      percentText: "%75",
      nameInstructor: UiStrings.nameInstructor4),
  Courses(
      picCourses: "assets/download (1).jpg",
      picInstructor: "assets/person(3).jpg",
      nameCourses: UiStrings.hr,
      percent: .75,
      percentText: "%75",
      nameInstructor: UiStrings.nameInstructor3),
  Courses(
      picCourses: "assets/download (4).jpg",
      picInstructor: "assets/person(5).jpg",
      nameCourses: UiStrings.account,
      percent: .75,
      percentText: "%75",
      nameInstructor: UiStrings.nameInstructor2),
  Courses(
      picCourses: "assets/download (3).jpg",
      picInstructor: "assets/person(4).jpg",
      nameCourses: UiStrings.code,
      percent: .75,
      percentText: "%75",
      nameInstructor: UiStrings.nameInstructor1),
  Courses(
      picCourses: "assets/download (2).jpg",
      picInstructor: "assets/person(1).jpg",
      nameCourses: UiStrings.code,
      percent: .75,
      percentText: "%75",
      nameInstructor: UiStrings.nameInstructor5)
];

Widget trendingCourses() {
  return SizedBox(
      height: 230,
      width: 300,
      child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: courses.length,
          itemBuilder: (BuildContext context, int index) {
            return GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          CoursesDetails(product: courses[index]),
                    ),
                  );
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                      color: ThemeColors.white,
                      borderRadius: BorderRadius.circular(30)),
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30)),
                      child: Image.asset(
                        courses[index].picCourses,
                        height: 140,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Container(
                        margin: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  courses[index].nameCourses,
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                                const Text(
                                  "\$425",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(children: [
                              CircleAvatar(
                                  radius: 10,
                                  backgroundColor: ThemeColors.white,
                                  foregroundColor: ThemeColors.white,
                                  child: ClipOval(
                                      child: Image.asset(
                                          courses[index].picInstructor))),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                courses[index].nameInstructor,
                                style: const TextStyle(
                                    fontWeight: FontWeight.w500, fontSize: 10),
                              ),
                            ]),
                          ],
                        ))
                  ]),
                ));
          }));
}

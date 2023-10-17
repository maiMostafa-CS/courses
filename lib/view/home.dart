import 'package:courses/util/colors.dart';
import 'package:courses/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../common/CircularPercentIndicator.dart';
import '../model/modelCourses.dart';

List<Courses> courses = [
  Courses(
      picCourses: "assets/download (5).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.uiUx,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.75 ,
progressColor: ThemeColors.green,
center: const Text("75%",style: TextStyle(fontSize: 15),),

)),
  Courses(
      picCourses: "assets/download (1).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.hr,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.75 ,
progressColor: ThemeColors.green,
center: const Text("75%",style: TextStyle(fontSize: 15),),

)),
  Courses(
      picCourses: "assets/download (4).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.account,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.75 ,
progressColor: ThemeColors.green,
center: const Text("75%",style: TextStyle(fontSize: 15),),

)),
  Courses(
      picCourses: "assets/download (3).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.code,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.75 ,
progressColor: ThemeColors.green,
center: const Text("75%",style: TextStyle(fontSize: 15),),

)),
  Courses(
      picCourses: "assets/download (2).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.code,percent:CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.75 ,
progressColor: ThemeColors.green,
center: const Text("75%",style: TextStyle(fontSize: 15),),
      )
)
];
Widget home(item) {
  return Scaffold(
    appBar: AppBar(
      elevation: 0,
      backgroundColor: ThemeColors.yellow,
      leading: CircleAvatar(
        radius: 20,
        backgroundColor: ThemeColors.shadow,
        child: Icon(
          Icons.menu,
          size: 20,
          color: ThemeColors.white,
        ),
      ),
      actions: [
        CircleAvatar(
          radius: 20,
          backgroundColor: ThemeColors.shadow,
          child: Icon(
            Icons.search,
            color: ThemeColors.white,
          ),
        ),
        const Padding(padding: EdgeInsets.symmetric(horizontal: 10))
      ],
    ),
    body: Column(children: [
      Container(
        color: ThemeColors.yellow,
        height: 180,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    UiStrings.helloAbhishek,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    UiStrings.findPerfect,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: ThemeColors.blue),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(UiStrings.coursesForYou,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: ThemeColors.blue)),
                ],
              ),
            ),
          ],
        ),
      ),
      Container(
        color: ThemeColors.amber,
        height: 435,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
            child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                UiStrings.categories,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                UiStrings.seeAll,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
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
                  })),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                UiStrings.trendingCourses,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
              Text(
                UiStrings.seeAll,
                style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          SizedBox(
              height: 230,
              width: 300,
              child: ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: courses.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
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
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      courses[index].name,
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
                                  const Text(
                                    UiStrings.donNorman,
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 10),
                                  ),
                                ]),
                              ],
                            ))
                      ]),
                    );
                  })),
     
     
        ])),
      )
    ]),
  );
}

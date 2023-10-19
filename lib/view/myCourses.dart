import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../model/modelCourses.dart';
import '../util/colors.dart';
import '../util/strings.dart';
List<Courses> courses = [
  Courses(
      picCourses: "assets/download (5).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.uiUx,percent:.75 ,percentText: "%75"
  ),
  Courses(
      picCourses: "assets/download (1).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.hr,percent:.5 ,percentText: "%50"
  ),
  Courses(
      picCourses: "assets/download (4).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.account,percent:.40 ,percentText: "%40"
  ),
  Courses(
      picCourses: "assets/download (3).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.code,percent:.90 ,percentText: "%90"
  ),
  Courses(
      picCourses: "assets/download (2).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.code,percent:.25 ,percentText: "%25"
  )
];
Widget myCourses() {
  return Scaffold(
    backgroundColor: ThemeColors.amber,
appBar: AppBar(
  title:Text(UiStrings.myCourses,style: (TextStyle(color: ThemeColors.blue)),),
   centerTitle: true,
   elevation: 0,
      backgroundColor: ThemeColors.yellow,
      leading:
        Icon(
          Icons.arrow_circle_left,
          size: 40,
          color: ThemeColors.shadow,
        ),
      ),
body:

Container(
  margin: const EdgeInsets.symmetric(horizontal: 30),
              height: double.infinity,
              width:300,
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
                                 const SizedBox(width:120,),
                                    CircularPercentIndicator(radius: 25,
lineWidth: 7,
percent:courses[index].percent ,
progressColor: ThemeColors.green,
center: Text(courses[index].percentText,style: const TextStyle(fontSize: 15),),)
                              
                              
                                ]),
                              ],
                            ))
                      ]),
                    );
                  })),
   
     




  );
}

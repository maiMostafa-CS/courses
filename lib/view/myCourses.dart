import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';
import '../model/modelCourses.dart';
import '../util/colors.dart';
import '../util/strings.dart';
List<Courses> courses = [
  Courses(
      picCourses: "assets/download (5).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.uiUx,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.75 ,
progressColor: ThemeColors.green,
center: const Text("75%",style: TextStyle(fontSize: 15),),

)
  ),
  Courses(
      picCourses: "assets/download (1).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.hr,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.5 ,
progressColor: ThemeColors.green,
center: const Text("50%",style: TextStyle(fontSize: 15),),

)
  ),
  Courses(
      picCourses: "assets/download (4).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.account,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.6 ,
progressColor:ThemeColors.green,
center: const Text("60%",style: TextStyle(fontSize: 15),),

)
  ),
  Courses(
      picCourses: "assets/download (3).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.code,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.25 ,
progressColor:ThemeColors.green,
center: const Text("25%",style: TextStyle(fontSize: 15),),

)
  ),
  Courses(
      picCourses: "assets/download (2).jpg",
      picInstructor: "assets/person(1).jpg",
      name: UiStrings.code,percent: CircularPercentIndicator(radius: 35,
lineWidth: 7,
percent:.50 ,
progressColor:ThemeColors.green,
center: const Text("50%",style: TextStyle(fontSize: 15),),

)
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
                                     Text(
                                   "${courses[index].percent} ",
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
   
     




  );
}

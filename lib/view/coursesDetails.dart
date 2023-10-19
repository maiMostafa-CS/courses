import 'package:courses/model/modelCategories.dart';
import 'package:courses/util/colors.dart';
import 'package:courses/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:readmore/readmore.dart';

class CoursesDetails extends StatefulWidget {
  @override
  State<CoursesDetails> createState() => _CoursesDetailsState();
}

class _CoursesDetailsState extends State<CoursesDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: ThemeColors.shadow,
          child: Icon(
            Icons.arrow_circle_left,
            size: 20,
            color: ThemeColors.white,
          ),
        ),
        actions: [
          CircleAvatar(
            radius: 20,
            backgroundColor: ThemeColors.shadow,
            child: Icon(
              Icons.favorite,
              color: ThemeColors.white,
            ),
          ),
          const Padding(padding: EdgeInsets.symmetric(horizontal: 10))
        ],
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(35),
            child: Image.asset(
              "assets/download (3).jpg",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            UiStrings.uiUx,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(children: [
            CircleAvatar(
                radius: 10,
                backgroundColor: ThemeColors.white,
                foregroundColor: ThemeColors.white,
                child: ClipOval(child: Image.asset("assets/person(2).jpg"))),
            const SizedBox(
              width: 10,
            ),
            const Text(
              UiStrings.donNorman,
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            ),
          ]),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Icon(
                Icons.alarm,
                color: ThemeColors.green,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                UiStrings.timeClock,
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                color: ThemeColors.green,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                UiStrings.roting,
                style: TextStyle(fontSize: 15),
              ),
              const SizedBox(
                width: 10,
              ),
              Icon(
                Icons.person,
                color: ThemeColors.green,
                size: 15,
              ),
              const SizedBox(
                width: 5,
              ),
              const Text(
                UiStrings.members,
                style: TextStyle(fontSize: 15),
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
        ReadMoreText(UiStrings.detailsCourses,
        lessStyle:TextStyle(color: ThemeColors.blue) ,
        moreStyle:TextStyle(color: ThemeColors.blue) ,
        ),
         const SizedBox(
            height: 15,),
        const Text(
                UiStrings.lessons,
                style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10,),
       Container(
width: double.infinity,
padding: EdgeInsets.fromLTRB(10, 0 ,0, 0),
height: 60,
decoration: BoxDecoration(color: Color.fromARGB(40, 45, 46, 45),borderRadius: BorderRadius.circular(20)),
        child: Row(children: const [
Icon(Icons.play_circle),
 SizedBox(width: 10,),
 Text(
              UiStrings.uiUxDesign  ,
                style: TextStyle(fontSize: 15,),
              ),
           SizedBox(width: 80,),
              Text(UiStrings.time1)

        ]),
       )
       ,const SizedBox(height: 10,)
        , Container(
width: double.infinity,
padding: EdgeInsets.fromLTRB(10, 0 ,0, 0),
height: 60,
decoration: BoxDecoration(color: Color.fromARGB(40, 45, 46, 45),borderRadius: BorderRadius.circular(20)),
        child: Row(children: const [
Icon(Icons.play_circle),
 SizedBox(width: 10,),
 Text(
              UiStrings.uiUxDesign  ,
                style: TextStyle(fontSize: 15,),
              ),
           SizedBox(width: 80,),
              Text(UiStrings.time1)

        ]),
       )
      
      
      
        ]),
      ),
    );
//     Scaffold(
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: ThemeColors.yellow,
//         leading: CircleAvatar(
//           radius: 20,
//           backgroundColor: ThemeColors.shadow,
//           child: Icon(
//             Icons.menu,
//             size: 20,
//             color: ThemeColors.white,
//           ),
//         ),
//         actions: [
//           CircleAvatar(
//             radius: 20,
//             backgroundColor: ThemeColors.shadow,
//             child: Icon(
//               Icons.search,
//               color: ThemeColors.white,
//             ),
//           ),
//           const Padding(padding: EdgeInsets.symmetric(horizontal: 10))
//         ],
//       ),
//       body: Column(children: [
//         Container(
//             color: ThemeColors.yellow,
//             height: 180,
//             width: double.infinity,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 10),
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       const SizedBox(
//                         height: 30,
//                       ),
//                       const Text(
//                         UiStrings.helloAbhishek,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold, fontSize: 20),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(
//                         UiStrings.findPerfect,
//                         style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 30,
//                             color: ThemeColors.blue),
//                       ),
//                       const SizedBox(
//                         height: 10,
//                       ),
//                       Text(UiStrings.coursesForYou,
//                           style: TextStyle(
//                               fontWeight: FontWeight.bold,
//                               fontSize: 30,
//                               color: ThemeColors.blue)),
//                     ],
//                   ),
//                 ),
//               ],
//             )),
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 20),
//           color: ThemeColors.amber,
//           height: 400,
//           child: Column(children: [
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text(
//                   UiStrings.categories,
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//                 ),
//                 Text(
//                   UiStrings.seeAll,
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//                 ),
//               ],
//             ),
//             // SingleChildScrollView(
//             //   child: Column(
//             //     children:[
// const SizedBox(
//               height: 10,
//             ),
//             SizedBox(
//                 height: 100,
//                 width: double.infinity,
//                 child: ListView.builder(
//                     padding: const EdgeInsets.all(8),
//                     scrollDirection: Axis.horizontal,
//                     itemCount: item.length,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         height: 100,
//                         width: 100,
//                         margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(20),
//                           color: ThemeColors.white,
//                         ),
//                         child: Column(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           crossAxisAlignment: CrossAxisAlignment.center,
//                           children: [
//                             item[index].icon,
//                             Text(
//                               item[index].nameCourses,
//                               style: const TextStyle(
//                                 fontWeight: FontWeight.w500,
//                                 fontSize: 10,
//                               ),
//                             ),
//                           ],
//                         ),
//                       );
//                     })),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: const [
//                 Text(
//                   UiStrings.trendingCourses,
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//                 ),
//                 Text(
//                   UiStrings.seeAll,
//                   style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 15,
//             ),
//             SizedBox(
//                 height: 200,
//                 width: 300,
//                 child: ListView.builder(
//                     padding: const EdgeInsets.all(8),
//                     itemCount: 2,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Container(
//                         decoration: BoxDecoration(
//                             color: ThemeColors.white,
//                             borderRadius: BorderRadius.all(Radius.circular(30))),
//                         child: Column(children: [
//                           Image.asset(
//                             "assets/download (4).jpg",
//                             height: 140,
//                             width: 300,
//                             fit: BoxFit.cover,
//                           ),
//                           const SizedBox(
//                             height: 5,
//                           ),
//                           Container(
//                               margin:
//                                   const EdgeInsets.symmetric(horizontal: 10),
//                               child: Column(
//                                 children: [
//                                   Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceBetween,
//                                     children: const [
//                                       Text(
//                                         UiStrings.uiUx,
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 15),
//                                       ),
//                                       Text(
//                                         "\$425",
//                                         style: TextStyle(
//                                             fontWeight: FontWeight.w500,
//                                             fontSize: 15),
//                                       ),
//                                     ],
//                                   ),
//                                   Row(children: [
//                                     CircleAvatar(
//                                         radius: 10,
//                                         backgroundColor: ThemeColors.white,
//                                         foregroundColor: ThemeColors.white,
//                                         child: ClipOval(
//                                             child: Image.asset(
//                                                 "assets/person(3).jpg"))),
//                                     const SizedBox(
//                                       width: 10,
//                                     ),
//                                     const Text(
//                                       UiStrings.donNorman,
//                                       style: TextStyle(
//                                           fontWeight: FontWeight.w500,
//                                           fontSize: 10),
//                                     ),
//                                   ]),
//                                 ],
//                               ))
//                         ]),
//                       );
//                     }))
//           // ]),
//           //  )
//           ]
//         )
//         ),
//       ]),
//     );
  }
}

import 'package:courses/util/colors.dart';
import 'package:courses/util/strings.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import '../../common/icon.dart';
import '../../model/modelCourses.dart';
import 'lessons.dart';

// ignore: must_be_immutable
class CoursesDetails extends StatefulWidget {
  Courses? product;
  CoursesDetails({super.key, this.product});
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
              widget.product?.picCourses ?? "",
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            widget.product?.nameCourses ?? "",
            style: const TextStyle(
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
                child: ClipOval(
                    child: Image.asset(widget.product?.picInstructor ?? ""))),
            const SizedBox(
              width: 10,
            ),
            Text(
              widget.product?.nameInstructor ?? "",
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 10),
            ),
          ]),
          SizedBox(
              height: 380,
              child: SingleChildScrollView(
                  child: Column(children: [
                Row(
                  children: [
                   icon( Icons.alarm),                   
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
                   icon(  Icons.star), 
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
                    icon(  Icons.person),
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
                ReadMoreText(
                  UiStrings.detailsCourses,
                  lessStyle: TextStyle(color: ThemeColors.blue),
                  moreStyle: TextStyle(color: ThemeColors.blue),
                ),
                const SizedBox(
                  height: 15,
                ),
              lessons()
              ])))
        ]),
      ),
    );
  }
}

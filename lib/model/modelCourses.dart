import 'package:courses/util/strings.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Courses {
  final String picCourses;
  final String picInstructor;
  final String name;
  final String  percentText;
  final double percent;
  Courses(
     {required this.picCourses,
      required this.picInstructor,
      required this.name,
      required this.percentText,
      required this.percent});
}

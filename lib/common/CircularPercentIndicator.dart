import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../util/colors.dart';

Widget percent() {
  return CircularPercentIndicator(
    radius: 35,
    lineWidth: 7,
    percent: .75,
    progressColor: ThemeColors.green,
    center: const Text(
      "75%",
      style: TextStyle(fontSize: 15),
    ),
  );
}

import 'package:flutter/material.dart';

import '../../util/colors.dart';
import '../../util/strings.dart';

Widget lessons() {
  return Column(
    crossAxisAlignment:  CrossAxisAlignment.start,
children: [
    const Text(
                  UiStrings.lessons,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(40, 45, 46, 45),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: const [
                    Icon(Icons.play_circle),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      UiStrings.uiUxDesign,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(UiStrings.time1)
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  height: 60,
                  decoration: BoxDecoration(
                      color: const Color.fromARGB(40, 45, 46, 45),
                      borderRadius: BorderRadius.circular(20)),
                  child: Row(children: const [
                    Icon(Icons.play_circle),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      UiStrings.uiUxDesign,
                      style: TextStyle(
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      width: 80,
                    ),
                    Text(UiStrings.time1)
                  ]),
                ),
                const SizedBox(
                  height: 15,
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(ThemeColors.green),
                    padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                            horizontal: 75, vertical: 18)),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30))),
                  ),
                  child: const Text(
                    UiStrings.enrollNow,
                    style: TextStyle(fontSize: 20),
                  ),
                ),
            
            
],


  );
}

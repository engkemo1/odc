import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../widget/NavBar.dart';

class CourseDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            padding: EdgeInsets.all(20),
            child: ListView(
              children: [
                Container(
                    height: 277,
                    margin: EdgeInsets.only(bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        "assets/images/courseDe.png",
                        fit: BoxFit.cover,
                      ),
                    )),
                Text(
                  "Learn UI/UX for beginners",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      fontFamily: 'Roboto'),
                ),
                Text(
                  "Author: Ahmed Abaza",
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      fontFamily: 'Roboto',
                      color: Colors.black38),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, NavBar.routeName),
                  child: Container(
                      width: 335.0,
                      height: 56.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: ColorHelp.orange),
                      child: Center(
                        child: Text(
                          "Start Course",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 30,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "About this Course",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                    ),
                    child: Text(
                      "Welcome to your UX Design for Beginners Course. In the following\n tutorials, you'll get a thorough introduction to UX design, from its\n definition, areas and origins through to the skills you need to build a\n professional portfolio and become a UX designer. ",
                      style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          fontFamily: 'Roboto',
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.only(left: 20, top: 20),
                  alignment: Alignment.topLeft,
                  height: 150,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.white ),
                  child: Image.asset(
                    "assets/images/MoreDetails.png",
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "You may be interested in",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          fontFamily: 'Roboto',
                          color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 100,
                  width: 100,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            height: 100,
                            child: Row(
                              children: [
                                Container(
                                  child: Image.asset(
                                    "assets/images/cours.png",
                                  ),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  "Learn UI/UX for Beginners",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 13,
                                      fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                              ],
                            ),
                          ),
                      itemCount: 4),
                )
              ],
            )));
  }
}

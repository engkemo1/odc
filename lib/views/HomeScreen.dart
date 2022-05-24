import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/New_courses.dart';
import 'package:odc/constants.dart';
import 'package:odc/views/Authentication/LogIn.dart';
import 'package:odc/views/Authentication/SignUp.dart';
import 'package:odc/views/Catigories.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class HomeScreen extends StatefulWidget {
  static const routeName = "/home_screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List list = [
    {
      'name': 'Graphics',
      'imageUrl': 'assets/images/graphics.png',
    },
    {
      'name': 'Programing Language',
      'imageUrl': 'assets/images/proglan.png',
    },
    {
      'name': 'Web Development',
      'imageUrl': 'assets/images/web.png',
    }
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(left: 20,right: 20),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.topLeft,
              child: Image.asset(
                "assets/images/LogoOdc.png",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.all(20),
              height: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.black,
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0, 7),
                    blurRadius: 1,
                    color: ColorHelp.orange,
                  )
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Enter the Code to\n Get your course",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontFamily: "Roboto",
                        fontSize: 25,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        width: 240.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.grey,
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            hintText: 'Enter Code',
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: ColorHelp.orange),
                          child: Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                        onTap: () {},
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Top Categories",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                InkWell(
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>Categories()));

                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return GestureDetector(
                    child: Padding(
                      padding: EdgeInsets.only(left: 10, right: 10),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: Image.asset(list[i]['imageUrl']),
                      ),
                    ),
                    onTap: () {},
                  );
                },
                itemCount: list.length,
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "New Courses",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontFamily: "Roboto",
                      fontSize: 20,
                      color: Colors.black),
                  textAlign: TextAlign.left,
                ),
                InkWell(
                  child: Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontFamily: "Roboto",
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: Colors.black),
                    textAlign: TextAlign.left,
                  ),
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_)=>NewCourses()));
                  },
                )
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 250,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, i) {
                  return Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10),
                          child: Container(
                              height: 150,
                              width: 270,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20.0),
                                child:
                                    Image.asset("assets/images/unsplash.png"),
                              )),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10,top: 10),
                          child: Text(
                            "UI & UX Design",
                            style: TextStyle(
                              fontSize: 9,
                              color: ColorHelp.orange,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 20, right: 10,top: 10),
                          child: Text(
                            "Learn UI/UX for Beginners",
                            style: TextStyle(
                              fontSize: 17,
                              color: Colors.black,
                              fontWeight: FontWeight.w700,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ),
                        Row(children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20, right: 10,top: 10),
                            child: Text(
                              "Ahmed Abaza",
                              style: TextStyle(
                                fontSize: 12,
                                color: Color.fromRGBO(151, 151, 151, 1),
                                fontWeight: FontWeight.w500,
                                fontFamily: 'Roboto'
                              ),
                              textAlign: TextAlign.left,
                            ),

                          ),
                          Container(
                            margin: EdgeInsets.only(top: 10),
                            height: 6,width: 6 ,decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(6),color: Color.fromRGBO(151, 151, 151, 1)
                          ),),
                          Padding(
                          padding: EdgeInsets.only(left: 20, right: 10,top: 10),
                  child: Text(
                  "15 Hours",
                  style: TextStyle(
                  fontSize: 12,
                  color: Color.fromRGBO(151, 151, 151, 1),
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Roboto'
                  ),
                  textAlign: TextAlign.left,
                  )),

                        ],)


                      ],
                    ),
                  );
                },
                itemCount: list.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

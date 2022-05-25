
import 'package:flutter/material.dart';
import 'package:odc/views/Courses/CourseAfterExam.dart';
import 'package:odc/views/HomeScreen.dart';

import '../../Utils/constants.dart';

class Congrate extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Container(
          child: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          padding: EdgeInsets.only(left: 20),
        ),
        title: Text(
          'Result',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              fontSize: 19,
              color: Colors.black),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
body: Column(
  children: <Widget>[
    SizedBox(height: 20),
    SizedBox(height: 20,),
    Container(
      child: Image.asset("assets/images/Result.png"),
    ),
    SizedBox(height: 20,),
    Text("Lorem ipsum dolor ",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
    SizedBox(height: 20,),

    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do  ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),textAlign: TextAlign.center,),


    SizedBox(height: 30,),

    GestureDetector(
      onTap: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>CourseAfterExam()));
      },
      child: Container(
          width: 300.0,
          height: 60.0,
          decoration: BoxDecoration(
              borderRadius:
              BorderRadius.circular(10.0),
              color: ColorHelp.orange),
          child: Center(
            child: Text(
              "Go to The Course",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
                fontSize: 14,
                decoration: TextDecoration.none,
              ),
            ),
          )),
    ),


  ],
),
    );
  }
}

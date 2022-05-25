import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import 'Questions.dart';

class CourseExam1 extends StatefulWidget {
  static const routeName = "/course_exam1";

  @override
  State<CourseExam1> createState() => _CourseExam1State();
}

class _CourseExam1State extends State<CourseExam1> {
  int _currentStep = 0;
  StepperType stepperType = StepperType.horizontal;

  tapped(int step) {
    setState(() => _currentStep = step);
  }

  continued() {
    _currentStep < 2 ?
    setState(() => _currentStep += 1) : null;
  }

  cancel() {
    _currentStep > 0 ?
    setState(() => _currentStep -= 1) : null;
  }


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

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
          'Course Exam',
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              fontSize: 19,
              color: Colors.black),
          textAlign: TextAlign.center,
        ),
        centerTitle: true,
      ),
      body: Column
        (
        children: [
Expanded(child:
Stepper(
  type: stepperType,
  physics: ScrollPhysics(

  ),
  currentStep: _currentStep,
  onStepTapped: (step) => tapped(step),
  steps: <Step>[
    Step(

      title: new Text('Exam'),
      content: Column(
        children: <Widget>[
          SizedBox(height: 20),
         Text("Learn UI/UX for Beginners",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 18),),
          SizedBox(height: 20,),
          Container(
            child: Image.asset("assets/images/exam.png"),
          ),
          SizedBox(height: 20,),
          Text("Start your exam",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
          SizedBox(height: 20,),

          Text("Make Sure to Achieve More Than 60% ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),),

          SizedBox(height: 20,),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Text("Exam Time",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),
  Text("1 Hour",style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15),),



  ],),
          SizedBox(height: 30,),

          GestureDetector(
            onTap: () {
Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Questions()));
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
                    "Start",
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
      isActive: false,

    ),
    Step(
      title: new Text('Hr Interview'),
      content: Column(
        children: <Widget>[
          TextFormField(
            decoration: InputDecoration(labelText: 'Home Address'),
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Postcode'),
          ),
        ],
      ),
      isActive: _currentStep >= 0,
      state: _currentStep >= 1 ?
      StepState.complete : StepState.disabled,
    ),
    Step(
      title: new Text('Result'),
      content: Text(""
      ),
      isActive: _currentStep >= 0,
      state: _currentStep >= 2 ?
      StepState.complete : StepState.disabled,
    ),
  ],
),
    )
        ],
      ),

    );
  }
}
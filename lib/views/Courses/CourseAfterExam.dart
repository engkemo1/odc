import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import '../CourseExam/Questions.dart';

class CourseAfterExam extends StatefulWidget {
  const CourseAfterExam({Key? key}) : super(key: key);

  @override
  State<CourseAfterExam> createState() => _CourseAfterExamState();
}

class _CourseAfterExamState extends State<CourseAfterExam> {
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
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: ListView(
              children: [
                Container(

                    height: 250,
                    margin: EdgeInsets.all( 20),
                    child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset(
                            "assets/images/courseDe.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            margin: EdgeInsets.all(15),
                            height: 52,
                            width: 52,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Colors.black38),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                                size: 25,
                              ),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                          ),
                        )
                      ],
                    )),
                Text(
                  "Learn UI/UX for beginners",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 22,
                      fontFamily: 'Roboto'), textAlign: TextAlign.center,
                ),
                Text(
                    "Author: Ahmed Abaza",
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 15,
                        fontFamily: 'Roboto',
                        color: Colors.black38), textAlign: TextAlign.center
                ),
                SizedBox(
                  height: 20,
                ),
                Container(height: MediaQuery.of(context).size.height*0.5,child:Stepper(
                  type: stepperType,
                  elevation: 0,
                  physics: ScrollPhysics(

                  ),
                  currentStep: _currentStep,
                  onStepTapped: (step) => tapped(step),
                  steps: <Step>[
                    Step(

                      title: new Text('Section1'),
                      subtitle:new Text('4/27') ,
                      content:Column(crossAxisAlignment: CrossAxisAlignment.center,children: [
                        SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 20),
                          alignment: Alignment.topLeft,
                          height: 150,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Image.asset(
                            "assets/images/de.png",
                          ),
                        ),
                      SizedBox(height: 20,),

                    Text("Scan your QR Code to take your attendance",textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),)
,SizedBox(height: 20,),
                        Container(
                          padding: EdgeInsets.only(left: 20, top: 20,right: 20),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white),
                          child: Image.asset(
                            "assets/images/QR.png",
                          ),
                        ),
                      SizedBox(height: 40,),

                    GestureDetector(
                          onTap: () {

                          },
                          child: Container(
                              width: 335.0,
                              height: 56.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Colors.grey),
                              child: Center(
                                child: Text(
                                  "Start Quiz 1",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              )),
                        ),



                      ],),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2 ?
                      StepState.complete : StepState.disabled,
                    ),
                    Step(
                      title: new Text('quiz1'),
                      subtitle: Text("5/4"),
                      content: Column(
                        children: <Widget>[
                          Text("")
                        ],
                      ),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1 ?
                      StepState.complete : StepState.disabled,
                    ),
                    Step(
                      title: new Text('quiz1'),
                      subtitle: Text("5/4"),
                      content:
                          Text("")
                      ,
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 1 ?
                      StepState.complete : StepState.disabled,
                    ),

                    Step(
                      title: new Text('section'),
                      subtitle: Text("9/4"
                      ),
                      content: Text(""),
                      isActive: _currentStep >= 0,
                      state: _currentStep >= 2 ?
                      StepState.complete : StepState.disabled,
                    ),
                  ],
                ), )


              ],
            )));
  }}
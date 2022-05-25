import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../Utils/constants.dart';
import 'Questions.dart';
import 'Congrate.dart';
class HrInterview extends StatefulWidget {
  static const routeName = "/hr_interview";

  @override
  State<HrInterview> createState() => _HrInterviewState();
}

class _HrInterviewState extends State<HrInterview> {
  int _currentStep = 1;
  StepperType stepperType = StepperType.horizontal;

  tapped(int step) {
    setState(() => _currentStep = 1);
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
          'Hr Interview',
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
                isActive: _currentStep >= 0,
                state:
                StepState.complete
              ),
              Step(
                title: new Text('Hr Interview'),
                content: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    SizedBox(height: 20,),
                    Container(
                      child: Image.asset("assets/images/Hr.png"),
                    ),
                    SizedBox(height: 20,),
                    Text("Wait for the Call",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                    SizedBox(height: 20,),

                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do  ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),textAlign: TextAlign.center,),


                    SizedBox(height: 30,),

                    GestureDetector(
                      onTap: () {

continued();
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
                              "Next",
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
                isActive: _currentStep >= 0,
                state:_currentStep==2?
                StepState.complete:StepState.disabled
              ),
              Step(
                title: new Text('Result'),
                content:Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    SizedBox(height: 20,),
                    Container(
                      child: Image.asset("assets/images/Result.png"),
                    ),
                    SizedBox(height: 20,),
                    Text("Wait for the Result",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 20),),
                    SizedBox(height: 20,),

                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do  ",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 15),textAlign: TextAlign.center,),


                    SizedBox(height: 30,),

                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>Congrate()));
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
                              "Next",
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
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:odc/Utils/constants.dart';

import 'Hr_Interview.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}


class _QuestionsState extends State<Questions> {

  bool isChecked=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Course Exam",
            style: TextStyle(
                color: Colors.black, fontSize: 15, fontWeight: FontWeight.w500),
          ),
          elevation: 0,
          centerTitle: true,
          backgroundColor: Colors.white,
        ),
        body: Container(
          margin: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),

              Row(
mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        "Question",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 36,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "1",
                        style: TextStyle(
                            color: Colors.orange,
                            fontSize: 30,
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "/10",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 15,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
          CircularCountDownTimer(
            duration: 100000,
            initialDuration: 0,
            controller: CountDownController(),
            width: 50,
            height: 50,
            ringColor: Colors.grey[300]!,
            ringGradient: null,
            fillColor: ColorHelp.orange,
            fillGradient: null,
            backgroundColor: Colors.white,
            backgroundGradient: null,
            strokeWidth: 10.0,

            strokeCap: StrokeCap.round,
            textStyle: TextStyle(
                fontSize: 10.0, color: Colors.black, fontWeight: FontWeight.bold),
            textFormat: CountdownTextFormat.MM_SS,
            isReverse: false,
            isReverseAnimation: false,
            isTimerTextShown: true,
            autoStart: true,
            onStart: () {
              debugPrint('Countdown Started');
            },
            onComplete: () {
              debugPrint('Countdown Ended');
            },
          )

                  ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                "What is the user experience?",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.start,
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorHelp.orange, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  The user experience is how the \n   developer feels about a user.",
                      style: TextStyle(color: Colors.black, fontSize: 15,),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      maxLines: 3,
                    ),
Transform.scale(
  scale: 2,
  child:Checkbox(
    checkColor: Colors.white,
    value: isChecked,
    splashRadius: 50,
    activeColor: ColorHelp.orange,

    shape: CircleBorder(),
    side: MaterialStateBorderSide.resolveWith(
          (states) => BorderSide(width: 1, color: ColorHelp.orange),

    ),                   onChanged: (bool? value) {
    setState(() {
      isChecked = value!;
    });
  },
  ) ,
)




                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorHelp.orange, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  The user experience is how the \n   developer feels about a user.",
                      style: TextStyle(color: Colors.black, fontSize: 15,),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      maxLines: 3,
                    ),
                    Transform.scale(
                      scale: 2,
                      child:Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        splashRadius: 50,
                        activeColor: ColorHelp.orange,

                        shape: CircleBorder(),
                        side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(width: 1, color: ColorHelp.orange),

                        ),                   onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      ) ,
                    )




                  ],
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                width: 360,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: ColorHelp.orange, width: 2)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "  The user experience is how the \n   developer feels about a user.",
                      style: TextStyle(color: Colors.black, fontSize: 15,),
                      overflow: TextOverflow.fade,
                      softWrap: true,
                      maxLines: 3,
                    ),
                    Transform.scale(
                      scale: 2,
                      child:Checkbox(
                        checkColor: Colors.white,
                        value: isChecked,
                        splashRadius: 50,
                        activeColor: ColorHelp.orange,

                        shape: CircleBorder(),
                        side: MaterialStateBorderSide.resolveWith(
                              (states) => BorderSide(width: 1, color: ColorHelp.orange),

                        ),                   onChanged: (bool? value) {
                        setState(() {
                          isChecked = value!;
                        });
                      },
                      ) ,
                    ),





                  ],
                ),
              ),
Container(
  margin: EdgeInsets.only(top: MediaQuery.of(context).size.height*0.2 ),
  alignment: Alignment.bottomRight,
  child:
GestureDetector(
  onTap: () {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HrInterview()));
  },
  child: Container(
      width: 200.0,
      height: 50.0,
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
)
    ,)
            ],
          ),
        ));
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Utils/constants.dart';
import '../../widget/Otp_input.dart';
import 'CreatPassword.dart';

class VerifyEmail extends StatelessWidget {
  static const routeName = "/verify_email";
  final TextEditingController _fieldOne = TextEditingController();

  final TextEditingController _fieldTwo = TextEditingController();

  final TextEditingController _fieldThree = TextEditingController();

  final TextEditingController _fieldFour = TextEditingController();

  final TextEditingController _fieldFive = TextEditingController();

  final TextEditingController _fieldSix = TextEditingController();

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
          "Forget Password",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              fontSize: 19,
              color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Container(
              child: Image.asset("assets/images/Verify.png"),
            ),
            Padding(
                padding: EdgeInsets.only(left: 30, right: 30,bottom: 10),
                child: RichText(
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.center,
                    text: const TextSpan(
                      style: TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w700,
                        color: Color.fromARGB(255, 26, 24, 22),

                        /* letterSpacing: 0.0, */
                      ),
                      children: [
                        TextSpan(
                          text: '''please enter the 4-digit code sent to ''',
                          style: TextStyle(
                              height: 1.171875,
                              fontSize: 15.0,
                              fontFamily: 'Roboto',
                              fontWeight: FontWeight.w600,
                              color: Colors.black
                            /* letterSpacing: 0.0, */
                          ),
                        ),
                        TextSpan(
                          text: '''kemo1@gmail.com''',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w600,
                            color: Color.fromARGB(255, 255, 102, 0),

                            /* letterSpacing: 0.0, */
                          ),
                        ),
                      ],
                    ))



            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.all(0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    OtpInput(_fieldOne, true),
                    OtpInput(_fieldTwo, false),
                    OtpInput(_fieldThree, false),
                    OtpInput(_fieldFour, false),
                  ]),
            ),
            SizedBox(
              height: 20,
            ),
            GestureDetector(
              onTap: () =>
                  Navigator.pushNamed(context, CreatePassword.routeName),
              child: Container(
                  margin: EdgeInsets.only(left: 30, right: 30),
                  width: 335.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: ColorHelp.orange),
                  child: Center(
                    child: Text(
                      "Verify",
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
      ),
    );
  }
}

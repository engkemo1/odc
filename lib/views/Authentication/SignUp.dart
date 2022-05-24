import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import 'LogIn.dart';

class SignUp extends StatefulWidget {
  static const routeName = "/sign_up";

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  var checkedValue=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 80,
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: EdgeInsets.only(left: 30),
              child: RichText(
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(
                      height: 1.171875,
                      fontSize: 35.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w700,
                      color: Color.fromARGB(255, 26, 24, 22),

                      /* letterSpacing: 0.0, */
                    ),
                    children: [
                      TextSpan(
                        text: '''Hello, ''',
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 35.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,

                          /* letterSpacing: 0.0, */
                        ),
                      ),
                      TextSpan(
                        text: '''Friend!''',
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 35.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w700,
                          color: Color.fromARGB(255, 255, 102, 0),

                          /* letterSpacing: 0.0, */
                        ),
                      ),
                      TextSpan(
                        text: '''\n \n Sign Up''',
                        style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w600,
                          color: Color.fromARGB(255, 58, 58, 58),

                          /* letterSpacing: 0.0, */
                        ),
                      )
                    ],
                  )),
            ),
            
            Container(
                margin: EdgeInsets.all(30),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: 335.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.person_outline),
                            hintText: 'Full name',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: 335.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.email_outlined),
                            hintText: 'E_mail',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: 335.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.lock_outlined),
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 30),
                        width: 335.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.phone),
                            hintText: 'Phone number',
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(bottom: 20),
                        width: 335.0,
                        height: 55.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color.fromARGB(255, 236, 236, 236),
                        ),
                        child: TextFormField(
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.all(15),
                            enabledBorder: InputBorder.none,
                            prefixIcon: Icon(Icons.location_on_outlined),
                            hintText: 'Address',
                          ),
                        ),
                      )
                    ],
                  ),
                )),
            CheckboxListTile(
              title:
              RichText(
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  text: const TextSpan(
                    style: TextStyle(
                      height: 1.171875,
                      fontSize: 12.0,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.w400,

                      /* letterSpacing: 0.0, */
                    ),
                    children: [
                      TextSpan(
                        text: "Do you agree to our  ",
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 12.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Colors.black

                          /* letterSpacing: 0.0, */
                        ),
                      ),
                      TextSpan(
                        text: ''' Privacy Policy''',
                        style: TextStyle(
                          height: 1.171875,
                          fontSize: 12.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          color: Color.fromARGB(255, 255, 102, 0),

                          /* letterSpacing: 0.0, */
                        ),
                      ),

                    ],
                  )),
              value: checkedValue,
              onChanged: (newValue) {
                setState(() {
                  checkedValue = newValue!;
                });
              },
              controlAffinity: ListTileControlAffinity.leading,  //  <-- leading Checkbox
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                  context, SignUp.routeName),
              child: Container(
                margin: EdgeInsets.only(left: 30,right: 30,bottom: 20),
                  width: 335.0,
                  height: 56.0,
                  decoration: BoxDecoration(
                      borderRadius:
                      BorderRadius.circular(10.0),
                      color: ColorHelp.orange),
                  child: Center(
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14,
                        decoration: TextDecoration.none,
                      ),
                    ),
                  )),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      '''Already Have an Account? ''',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          height: 1.171875,
                          fontSize: 13.0,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 0, 0, 0),
                          decoration: TextDecoration.none

                        /* letterSpacing: 0.0, */
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(
                          context, SignIn.routeName),
                      child: Text(
                        '''Log In''',
                        overflow: TextOverflow.visible,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            height: 1.171875,
                            fontSize: 13.0,
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w700,
                            color: Color.fromARGB(255, 255, 102, 0),
                            decoration: TextDecoration.none

                          /* letterSpacing: 0.0, */
                        ),
                      ),
                    )
                  ],
                )),
          ],
        ),
      )),
    );
  }
}

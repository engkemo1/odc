import 'package:flutter/material.dart';
import 'package:odc/Utils/constants.dart';
import 'package:odc/views/HomeScreen.dart';
import 'package:odc/views/forgtPassword/ForgetPassword.dart';
import 'package:provider/provider.dart';

import '../../controllers/login_provider.dart';
import '../../controllers/user_provider.dart';
import '../../widget/snackBar.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  static const routeName = "/sign_in";

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();


  final TextEditingController email = TextEditingController();

  final TextEditingController pass = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      key: _globalKey,
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        return SingleChildScrollView(

          scrollDirection: Axis.vertical,
          child: Container(
              height: 1043.7080078125,
              child: Stack(children: [
                Container(
                    width: constraints.maxWidth,
                    child: Container(
                      width: 428.0,
                      height: 926.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Stack(
                          fit: StackFit.expand,
                          alignment: Alignment.center,
                          overflow: Overflow.visible,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Container(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                            ),
                            Positioned(
                              left: 118.0,
                              top: 685.0,
                              right: null,
                              bottom: null,
                              width: 192.0,
                              height: 15.0,
                              child: Container(
                                  child: Row(
                                children: [
                                  Text(
                                    '''Don’t Have an Account? ''',
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
                                        context, SignUp.routeName),
                                    child: Text(
                                      '''Sign Up''',
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
                            ),
                            Positioned(
                              left: 30.0,
                              top: 589.0,
                              right: null,
                              bottom: null,
                              width: 335.0,
                              height: 56.0,
                              child: GestureDetector(
                                onTap: () async{
                                  if (_globalKey.currentState!
                                      .validate()) {
                                    try {
                                      await context
                                          .read<LoginProvider>()
                                          .loginButton(
                                          globalKey: _globalKey,
                                          context: context,
                                          email: email.text
                                              .trim(),
                                          password:
                                          email.text);

                                      await context
                                          .read<UserProvider>()
                                          .getUserData(
                                          email.text,
                                          pass.text);

                                      if (context
                                          .read<UserProvider>()
                                          .userData
                                          ?.data
                                          ?.first !=
                                          null)
                                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>HomeScreen()));
                                      else
                                        customSnackBar(
                                            text:
                                            'something went wrong',
                                            context: context);
                                    } catch (e) {
                                      print(e.toString());
                                    }
                                  }

                                },
                                child: Container(
                                    width: 335.0,
                                    height: 56.0,
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(10.0),
                                        color: ColorHelp.orange),
                                    child: Center(
                                      child: Text(
                                        "LogIn",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w700,
                                          fontSize: 14,
                                          decoration: TextDecoration.none,
                                        ),
                                      ),
                                    )),
                              ),

                            ),

                            //Forget password
                            Positioned(
                              left: 250.0,
                              top: 515.0,
                              right: null,
                              bottom: null,
                              width: 100.0,
                              height: 16.0,
                              child: GestureDetector(
                                onTap: (){
                                  Navigator.pushNamed(context,ForgetPassword.routeName );
                                },
                                child: Text(
                                  '''Forget Password''',
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
                              ),
                            ),
                            // Textformfield password
                            Positioned(
                              left: 30,
                              top: 449.0,
                              right: null,
                              bottom: null,

                              child:  Container(
                                width: 335.0,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 236, 236, 236),

                                ),
                               child: TextFormField(
                                 obscureText: false,
                                 keyboardType:
                                 TextInputType.visiblePassword,
                                 controller: pass,
                                 decoration: InputDecoration(
                                   contentPadding: EdgeInsets.all(15),
                                   enabledBorder: InputBorder.none,

                                   suffixIcon: Icon(Icons.remove_red_eye_outlined),
                                   hintText: 'Password',
                                 ),
                               ),
                              )
                            ),
                            Positioned(
                              left: 30.0,
                              top: 349.0,
                              right: null,
                              bottom: null,
                              width: 335.0,
                              height: 55.0,
                              child: Container(
                                width: 335.0,
                                height: 55.0,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10.0),
                                  color: Color.fromARGB(255, 236, 236, 236),

                                ),
                                child: TextFormField(
                                  controller: email,
                                  keyboardType: TextInputType.emailAddress,
                                  decoration: InputDecoration(
                                    contentPadding: EdgeInsets.all(15),
                                    enabledBorder: InputBorder.none,

                                    hintText: 'Email',
                                  ),
                                ),
                              ),
                            ),
                            // Textformfield Email

                            Positioned(
                              left: 48.0,
                              top: 226.0,
                              right: null,
                              bottom: null,
                              width: 242.0,
                              height: 73.0,
                              child: Container(
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
                                          text: '''Welcome ''',
                                          style: TextStyle(
                                            height: 1.171875,
                                            fontSize: 35.0,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w700,

                                            /* letterSpacing: 0.0, */
                                          ),
                                        ),
                                        TextSpan(
                                          text: '''Back!''',
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
                                          text: '''\n \n Login''',
                                          style: TextStyle(
                                            fontSize: 20.0,
                                            fontFamily: 'Roboto',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromARGB(
                                                255, 58, 58, 58),

                                            /* letterSpacing: 0.0, */
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ),
                            Positioned(
                              left: 48.0,
                              top: 99.0,
                              right: null,
                              bottom: null,
                              width: 81.17447662353516,
                              height: 42.1170539855957,
                              child: Container(
                                height: 200,width: 200,
                                child:Image(image: AssetImage("assets/images/logo.png",),fit: BoxFit.cover,)
                              ),
                            ),

                          ]),
                    ))
              ])),
        );
      }),
    );
  }
}

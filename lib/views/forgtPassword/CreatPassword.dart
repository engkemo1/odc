
import 'package:flutter/material.dart';
import 'package:odc/views/HomeScreen.dart';
import 'package:odc/views/forgtPassword/CreatPassword.dart';

import '../../constants.dart';
import '../Authentication/SignUp.dart';
import 'VerifyYourEmail.dart';
class CreatePassword extends StatelessWidget {
  static const routeName = "/create_password";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading:Container(child:
          IconButton(icon:Icon(Icons.arrow_back),color: Colors.black,onPressed: (){
            Navigator.pop(context);
          },),padding: EdgeInsets.only(left: 20),),
          title: Text("Forget Password",style: TextStyle(fontWeight: FontWeight.w500,fontFamily: "Roboto",fontSize: 19,color: Colors.black),),
          centerTitle: true,

        ),
        body:Container(
          padding: EdgeInsets.only(left: 20,right: 20),
          alignment: Alignment.center,
          child: ListView(

            children: [
              Container(

                child: Image.asset("assets/images/createpass.png"),
              ),
              Text("Please enter your New Password",style: TextStyle(fontWeight: FontWeight.bold,fontFamily: "Roboto",fontSize: 15,color: Colors.black),textAlign: TextAlign.center,),
              SizedBox(height: 20,),
              Container(
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

                    hintText: 'New Password',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              Container(
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

                    hintText: 'Confirom Password',
                  ),
                ),
              ),
              SizedBox(height: 20,),
              GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, HomeScreen.routeName),
                child: Container(
                    width: 335.0,
                    height: 56.0,
                    decoration: BoxDecoration(
                        borderRadius:
                        BorderRadius.circular(10.0),
                        color: ColorHelp.orange),
                    child: Center(
                      child: Text(
                        "Submit",
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
        )


    );
  }
}

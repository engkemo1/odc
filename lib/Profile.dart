import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:odc/Utils/constants.dart';
import 'package:odc/views/Authentication/LogIn.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            padding: EdgeInsets.only(left: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (_)=>SignIn()));
              },
              child: Image.asset(
                "assets/images/Logout.png",
              ),
            ),
          )
        ],
        title: Text(
          "My Profile",
          style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: "Roboto",
              fontSize: 22,
              color: ColorHelp.orange),
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    border: Border.all(color: ColorHelp.orange, width: 5),
                    borderRadius: BorderRadius.circular(50)),
                child: Image.asset(
                    "assets/images/man.png",
                  ),
                ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Kamal Magdy",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.black12),
              height: 21,
              width: 160,
              child: Center(
                  child: Text("kamalmagdy@gmail.com",
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 12,
                          color: Colors.black54))),
            ),
            SizedBox(
              height: 40,
            ),
           Align(alignment: Alignment.topLeft,child:  Text(
             "My Achievement",
             style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
             textAlign: TextAlign.left,
           ),),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 300,
              child: ListView.builder(
                itemBuilder: (context, index) => Container(
                  margin: EdgeInsets.only(bottom: 40),
                  child: ListTile(
                    leading: Image.asset(
                      "assets/images/Star.png",
                    ),
                    title: Text(
                      "Learn UI/UX for beginners",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
                      textAlign: TextAlign.start,
                    ),
                    subtitle: Text(
                      "Achieved April 21 2022",
                      style:
                          TextStyle(fontSize: 11, fontWeight: FontWeight.w400),
                      textAlign: TextAlign.start,
                    ),
                  ),
                ),
                itemCount: 2,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
class NewCourses extends StatelessWidget {
  static const routeName = "/new_courses";

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
            "New Courses",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 19,
                color: Colors.black),
            textAlign: TextAlign.center ,
          ),
          centerTitle: true,
        ),
        body: Container(
          alignment: Alignment.topCenter,
          child:

          Column(

            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              SizedBox(height: 40,),
              Container(height: MediaQuery.of(context).size.height-200,
                child:    ListView.separated(itemBuilder: (context, index) => Container(

                  height:100,child:
                ListTile(


                  leading: Container(child: Image.asset("assets/images/cours.png",height: 100,width: 100,fit: BoxFit.contain,),),
                  title: Text("Learn UI/UX for Beginners",style: TextStyle(color: Colors.black,fontSize: 13,fontWeight: FontWeight.w600),),
                  subtitle:                         Row(children: [
                    Padding(
                      padding: EdgeInsets.only( right: 5,top: 10),
                      child: Text(
                        "Ahmed Abaza",
                        style: TextStyle(
                            fontSize: 12,
                            color: Color.fromRGBO(151, 151, 151, 1),
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Roboto'
                        ),
                        textAlign: TextAlign.left,
                      ),

                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      height: 6,width: 6 ,decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(6),color: Color.fromRGBO(151, 151, 151, 1)
                    ),),
                    Padding(
                        padding: EdgeInsets.only(left: 10, right: 10,top: 10),
                        child: Text(
                          "15 Hours",
                          style: TextStyle(
                              fontSize: 12,
                              color: Color.fromRGBO(151, 151, 151, 1),
                              fontWeight: FontWeight.w500,
                              fontFamily: 'Roboto'
                          ),
                          textAlign: TextAlign.left,
                        )),

                  ],)
                  ,

                ),), separatorBuilder: (context, index) => Divider(
                  color: Colors.black,
                ), itemCount: 10)
                ,)

            ],
          ),)
    );
  }
}

import 'package:flutter/material.dart';
import 'package:odc/views/Courses/Courses.dart';

class Categories extends StatelessWidget {
  static const routeName = "/categories";
  List list = [
    {
      'name': 'Graphics',
      'imageUrl': 'assets/images/graphics.png',
    },
    {
      'name': 'Programing\n Language',
      'imageUrl': 'assets/images/proglan.png',
    },
    {
      'name': 'Web \nDevelopment',
      'imageUrl': 'assets/images/web.png',
    },
    {
      'name': 'Artificial\n intellgence ',
      'imageUrl': 'assets/images/Ai.png',
    },
    {
      'name': 'Mobile\nApplication',
      'imageUrl': 'assets/images/mobile.png',
    },
    {
      'name': 'Network',
      'imageUrl': 'assets/images/network.png',
    }
  ];

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
            "Categories",
            style: TextStyle(
                fontWeight: FontWeight.w500,
                fontFamily: "Roboto",
                fontSize: 19,
                color: Colors.black),
          ),
          centerTitle: true,
        ),
        body:Container(
          alignment: Alignment.topRight,
          margin: EdgeInsets.all( 40),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            itemBuilder: (_, index) => GestureDetector(
              child:Column(
                children: [
                  Container(
                    height: 70,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    child: Card(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Image.asset(list[index]['imageUrl']),
                    ),
                  ),
                  SizedBox(height: 10,),
                  Text(list[index]["name"],style: TextStyle(fontSize: 15,fontFamily: 'Roboto',fontWeight: FontWeight.w500),textAlign: TextAlign.center,)
                ],
              ),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (_)=>Courses(name:list[index]["name"] )));
              },
            ),
            itemCount: 6,
          ),
        )
    
    );
  }
}

import 'package:doctor_app/colors.dart';
import 'package:flutter/material.dart';

import '../doctors_section.dart';

class myhome extends StatelessWidget
{
  List catNames = [
    "Dental",
    "Eye",
    "Heart",
    "Brain",
    "Ear",
  ];

  List<Icon> catIcons=[
    Icon(Icons.medical_services , color:blcolor , size: 30),
    Icon(Icons.remove_red_eye , color:blcolor , size: 30),
    Icon(Icons.heart_broken_sharp , color:blcolor , size: 30),
    Icon(Icons.fingerprint , color:blcolor , size: 30),
    Icon(Icons.medical_information_outlined , color:blcolor , size: 30),
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color:Colors.blue[100],
      child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    blcolor.withOpacity(0.8),
                    blcolor,
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                )
              ),
            ),
            Padding(
              padding:EdgeInsets.only(top: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              radius: 30,
                              backgroundImage: 
                              AssetImage("assets/DoctorsIMG/1.jpg"),
                            ),
                            Icon(
                              Icons.notifications_outlined,
                              size: 30,color:wcolor,
                              ),
                          ],
                        ),
                        SizedBox(height: 15,),
                        Text(
                          "Hi Docters",
                          style: TextStyle(
                            color: wcolor,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 10,),
                        Text(
                          'Your Health is Our \nFist Priority',
                          style: TextStyle(
                            color:wcolor,
                            fontSize: 25,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 15,bottom: 20  ),
                          width: MediaQuery.of(context).size.width,
                          height: 55,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color:wcolor,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color:sdcolor,
                                // blurRadius: 6,
                                spreadRadius: 3,
                              )
                            ],
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Search Here...",
                              hintStyle: TextStyle(
                                color:Colors.black.withOpacity(0.5),
                              ),
                              prefixIcon: Icon(
                                Icons.search,
                                size: 25,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 15),
                    child: Text(
                      'Categories',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color:bcolor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: catNames.length,
                      itemBuilder: ((context, index) {
                        return Column(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(vertical: 5,horizontal: 15),
                              height: 60,width: 60,
                              decoration: BoxDecoration(
                                color:Color(0xFFF2F8FF),
                                shape: BoxShape.circle,
                                boxShadow: [
                                  BoxShadow(
                                    color: sdcolor,
                                    blurRadius: 4,
                                    spreadRadius: 2,
                                  )
                                ],
                              ),
                              child: Center(
                               child: catIcons[index],
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              catNames[index],
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color:bcolor.withOpacity(0.7),
                              ),
                            ),
                          ],
                        );
                      }),
                    ),
                  ),
                  SizedBox(height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Recommended Doctors",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color:bcolor.withOpacity(0.7),
                      ),
                    ),
                  ),
                  DoctorsSection(),
                ],
              ),
            ),


          ],
        ),
      ),
    );
  }
}
//  19:21
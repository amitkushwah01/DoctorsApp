import 'package:doctor_app/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appointment extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Material(
      color:Color(0xffd9e4ee),
      child: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height/2.1,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/DoctorsIMG/1.jpg",
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)
              )
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors:[
                    blcolor.withOpacity(0.9),
                    blcolor.withOpacity(0),
                    blcolor.withOpacity(0),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                )
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top:30 , left:10 , right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: (){
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  margin: EdgeInsets.all(8),
                                  height: 45,
                                  width:45,
                                  decoration: BoxDecoration(
                                    color: Color(0xfff2f8ff),
                                    borderRadius: BorderRadius.circular(10),
                                    boxShadow: [
                                      BoxShadow(
                                        color:sdcolor,
                                        blurRadius: 4,
                                        spreadRadius: 2,
                                      )
                                    ]
                                  ),
                                  child: Icon(
                                    Icons.arrow_back,
                                    color:blcolor,
                                    size:28,
                                  ),
                                ),
                              ),
                        Container(
                          margin: EdgeInsets.all(8),
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color: Color(0xfff2f8ff),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: sdcolor,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]
                          ),
                          child: Icon(
                            Icons.favorite_outline,
                            color:blcolor,
                            size: 28,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 80,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Patients",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: wcolor,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "1.8k",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight:FontWeight.w500,
                                color:wcolor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Experience",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: wcolor,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "10 Yr",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight:FontWeight.w500,
                                color:wcolor,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Rating",
                              style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: wcolor,
                              ),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "4.9",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight:FontWeight.w500,
                                color:wcolor,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Dr Looney",
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color:blcolor,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  children: [
                    Icon(Icons.heart_broken , color: Colors.red , size:28,),
                    SizedBox(width: 5),
                    Text(
                      "Surgeon",
                      style: TextStyle(
                        fontSize: 17,
                        color:bcolor.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
                SizedBox(height: 10),
                Text(
                  "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Loren Ipsum has been the industy",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: bcolor.withOpacity(0.6)
                  ),
                  textAlign: TextAlign.justify,
                ),SizedBox(height: 15),
                Text(
                  "Book Date",
                  style: TextStyle(
                    fontSize: 18,
                    color: bcolor.withOpacity(0.6),
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 70,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 6,
                    itemBuilder: (context, index){
                      return InkWell(
                        child: Container(
                          margin: EdgeInsets.symmetric(horizontal: 8 , vertical: 5),
                          padding: EdgeInsets.symmetric(vertical: 7, horizontal: 25),
                          decoration: BoxDecoration(
                            color:index==1?blcolor:Color(0xfff2f8ff),
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color:sdcolor,
                                blurRadius: 4,
                                spreadRadius: 2,
                              )
                            ]
                          ),
                          child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${index+8}",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: index==1
                                  ?wcolor:bcolor.withOpacity(0.6),
                                ),
                              ),
                              Text(
                                "Dec",
                                style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: index==1
                                  ?wcolor:bcolor.withOpacity(0.6),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 5),
                Text("Book Time",
                style: TextStyle(
                  fontSize: 18,
                  color: bcolor.withOpacity(0.6),
                  fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 8),
                Container(
                  height: 60,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount:6,
                    itemBuilder: ((context, index) {
                      return Container(
                        margin: EdgeInsets.symmetric(horizontal: 8,vertical: 5),
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                        decoration: BoxDecoration(
                          color : index == 2 ? blcolor : Color(0xfff2f8ff),
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: sdcolor,
                              blurRadius: 4,
                              spreadRadius: 2,
                            ),
                          ],
                        ),
                        child: Text(
                          " ${ index + 8 } : 00 AM",
                          style:TextStyle(
                            fontSize: 17,
                            color : index == 2 ? wcolor : bcolor.withOpacity(0.6)
                          ),
                        ),
                      );
                    }),
                  ),
                ),
                SizedBox(height: 20,),
                Material(
                  color: blcolor,
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width,
                      child: Center(
                        child: Text(
                          "Book Appointment ",
                          style: TextStyle(
                            color: wcolor,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
// 37:27
// 19 leave 
// 20 leave 
// 23 leave 
// 25 leave 
// 27 leave
// 30 leave 

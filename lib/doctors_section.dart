import 'package:doctor_app/colors.dart';
import 'package:doctor_app/screens/appointment.dart';
import 'package:flutter/material.dart';

class DoctorsSection extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340,
      child: ListView.builder(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: ((context, index) {
          return Column(
            children: [
              Container(
                height: 300,
                width: 200,
                margin: EdgeInsets.symmetric(horizontal: 15 , vertical: 20),
                decoration: BoxDecoration(
                  color:Color(0xFFF2f8ff),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                      color:sdcolor,
                      blurRadius: 4,
                      spreadRadius: 2
                    )
                  ]
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        InkWell(
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(
                              builder: (context)=>Appointment()));
                          },
                          child: ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(15),
                              topRight: Radius.circular(15),
                            ),
                            child: Image.asset(
                              "assets/DoctorsIMG/${ index + 1}.jpg",
                              height: 200,
                              width: 200,
                              fit: BoxFit.cover,
                              
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            margin: EdgeInsets.all(8),
                            height: 45,
                            width: 45,
                            decoration: BoxDecoration(
                              color: Color(0xfff2f8ff),
                              shape: BoxShape.circle,
                              boxShadow: [
                                BoxShadow(
                                  color: sdcolor,
                                  blurRadius: 4,
                                  spreadRadius: 2,
                                ),
                              ]
                            ),
                            child: Center(
                              child: Icon(
                                Icons.favorite_outline,
                                color: blcolor,
                                size: 28,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Column(
                      children: [
                        Text(
                          "Dr Ashish",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.w500,
                            color:blcolor,
                          ),
                        ),
                        Text(
                          "Surgeon",
                          style: TextStyle(
                            fontSize: 18,
                            color: blcolor.withOpacity(0.6),
                          ),
                        ),
                        SizedBox(height: 8,),
                        Row(
                          children: [
                            Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            SizedBox(width: 5,),
                            Text(
                              "4.9",
                              style:TextStyle(
                                fontSize: 16,
                                color: bcolor.withOpacity(0.6),
                            ),)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }),
      ),
    );
  }
}
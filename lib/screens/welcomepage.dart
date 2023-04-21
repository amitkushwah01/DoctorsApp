import 'package:doctor_app/colors.dart';
import 'package:doctor_app/screens/homepage.dart';
import 'package:flutter/material.dart';

class welcome extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        width : MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              blcolor.withOpacity(0.8),
              blcolor,
            ],
            begin: Alignment.topCenter,
            end  : Alignment.bottomCenter,
          )
        ),
        child: Column(
          children: [
            Image.asset('assets/doc.png'),
            const SizedBox(height: 50,),
            const Text(
              'Doctor Online',
              style: TextStyle(
                color:wcolor,
                fontSize: 35,
                fontWeight: FontWeight.bold,
                letterSpacing: 1,
                wordSpacing: 2,
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Appointment Your Doctor',
              style: TextStyle(
                color:wcolor,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 60,),
            Material(
              color:wcolor,
              borderRadius: BorderRadius.circular(20),
              child: InkWell(
                onTap: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>myhome()));
                },
                child: Container(
                  child: const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15 , horizontal: 40),
                    child: Text(
                      "Let's Go ",
                      style: TextStyle(
                        color: blcolor,
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                  ),
                ),
              ),
            ),const SizedBox(height: 15,),
            Image.asset(
              'assets/heart2.png',
              color:wcolor,
              scale: 1,
              height: 80,width: 380,
              ),

          ],
        ),
      ),
    );
  }
}
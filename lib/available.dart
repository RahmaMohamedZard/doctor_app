// ignore_for_file: prefer_const_constructorse, prefer_const_constructors, prefer_const_literals_to_create_immutables, sized_box_for_whitespace

import 'package:doctors_app/available_doctor.dart';
import 'package:doctors_app/doctor_available.dart';
import 'package:doctors_app/star.dart';
import 'package:flutter/material.dart';


class Available extends StatelessWidget {
  const Available({
    Key? key,
   required this.availableDoctor,
  }) : super(key: key);
  final AvailableDoctor availableDoctor;

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: const Color.fromARGB(255, 221, 235, 246),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10),
          child: GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(
           builder: (context) => DoctorAvailable(availableDoctor: demoAvailableDoctors),
          ),
          );
            },
            child: Container(
              width: 300,
              padding: EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(availableDoctor.name, style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold),),
                          Text(availableDoctor.sector, style: TextStyle(fontSize: 15,),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Star(),
                          ),
                          SizedBox(height: 10,),
                          Text('Experience', style: TextStyle(fontSize: 15,),),
                          Text('${availableDoctor.experience} Years ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                          SizedBox(height: 10,),
                          Text('Patients', style: TextStyle(fontSize: 15,),),
                          Text( availableDoctor.patients , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          
                        ],
                      ),
                      Container(
                        width: 92,
                        height: 150,
                        child: Image.asset(availableDoctor.image, fit: BoxFit.cover,),
                        
                      )
          
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
    );
       
          

  }}
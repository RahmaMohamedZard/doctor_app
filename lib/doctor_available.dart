// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:doctors_app/available_doctor.dart';
import 'package:doctors_app/star.dart';
import 'package:flutter/material.dart';


class DoctorAvailable extends StatelessWidget {
  const DoctorAvailable ({
    Key? key,
    required this.availableDoctor,
  }) : super(key: key);
  final List<AvailableDoctor> availableDoctor; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Available Specialist',
          style: TextStyle(fontSize: 20, color: Colors.black,fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
   child:  Container(
      color: const Color.fromARGB(255, 196, 206, 213),
      child: Padding(
        padding: const EdgeInsets.all(5),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, 
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.9,
            mainAxisExtent: 230, 
          ),
          itemCount: availableDoctor.length,
          itemBuilder: (context, index) {
            return Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(availableDoctor[index].name, style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text(availableDoctor[index].sector, style: TextStyle(fontSize: 14,color: Colors.black87),),
                          SizedBox(height: 5,),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: Star(),
                          ),
                          SizedBox(height: 10,),
                          Text('Experience', style: TextStyle(fontSize: 12,color: Colors.black87),),
                          Text('${availableDoctor[index].experience} Years ', style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black),),
                          SizedBox(height: 10,),
                          Text('Patients', style: TextStyle(fontSize: 12,color: Colors.black87),),
                          Text( availableDoctor[index].patients , style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,
                          color: Colors.black),),
          
                        ],
                      ),
                      Container(
                            width: 40,
                            height: 80,
                            child: ClipRRect( 
                            borderRadius: BorderRadius.circular(5), 
                            child: Image.asset(
                            availableDoctor[index].image,
                            fit: BoxFit.cover,
                       ),
                     ),
                       )
          
                    ],
                  )
                ],
              ),
            );
          },
        ),
      ),
    )));
  }
}
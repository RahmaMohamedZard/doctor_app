// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctors_app/data.dart';
import 'package:doctors_app/star.dart';
import 'package:flutter/material.dart';



class DataDoctors extends StatelessWidget {
  const DataDoctors({
    Key? key,
    required this.datas,
   
  }) : super(key: key);
  
  final Data datas;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          datas.name,
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
      ),
      body: Container(
        color: const Color.fromARGB(255, 221, 233, 244),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 350,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 148, 165, 180),
                image: DecorationImage(
                  image: NetworkImage(datas.image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center, 
              children: [
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 5), 
                  child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    padding: EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 86, 165, 230),
                    child: Row(
                      children: [
                        Icon(Icons.call, color: Colors.white),
                        SizedBox(width: 3),
                        Text(
                          'Voice Call',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 5), 
                  child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    padding: EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 103, 81, 159),
                    child: Row(
                      children: [
                        Icon(Icons.videocam, color: Colors.white),
                        SizedBox(width: 3),
                        Text(
                          'Video Call',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 50,
                  margin: EdgeInsets.symmetric(horizontal: 5), 
                  child: MaterialButton(
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                    onPressed: () {},
                    padding: EdgeInsets.all(10),
                    color: const Color.fromARGB(255, 189, 108, 67),
                    child: Row(
                      children: [
                        Icon(Icons.message, color: Colors.white),
                        SizedBox(width: 3),
                        Text(
                          'Message',
                          style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ),),],),
                  SizedBox(height: 7,),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: Alignment.bottomLeft,
                  child: Text(
                    datas.speciality,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),),
                ),
                  SizedBox(height: 5,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomLeft,
                    child: Text(
                  datas.institute,
                    style: const TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),),
                  ),
                   SizedBox(height: 2,),
                  Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Star(),
                      ),
                  SizedBox(height: 10,),    
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomLeft,
                      child: Text('About Serena' , style: TextStyle(fontSize: 20),)),
                    
                  SizedBox(height: 8,), 
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    alignment: Alignment.bottomLeft,
                      child: Text(
            'Lorem ipsum is simply dummy text of the printing and\ntypesetting industry. Lorem ipsum has been the industry is\nstandard dummy text ever since the 1500s.'
                      , style: TextStyle(fontSize: 13),)),
                     
                      SizedBox(height: 10,),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Patients', style: TextStyle(fontSize: 16,),),
                    ),
                    Text('Experience', style: TextStyle(fontSize: 16,),),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text('Reviews', style: TextStyle(fontSize: 16,),),
                    ),
           ] ),
                    Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                     child:  Text( datas.patients , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Text('${datas.experience} Years ', style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                    child:   Text( datas.reviews , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                    ),
           ] ),
                     
                     SizedBox(height: 8,),
                     Container(
                      child: MaterialButton(onPressed: (){},
                      color: const Color.fromARGB(255, 21, 18, 210),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                      padding: EdgeInsets.symmetric(horizontal: 80,vertical: 15),
                      child: Text('Book an Appoinment', style: TextStyle(fontSize: 20,color: Colors.white),),
                      ),
                     )
                 

                  
          ],
        ),
      ),
    );
  }}
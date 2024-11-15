// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:doctors_app/available.dart';
import 'package:doctors_app/available_doctor.dart';
import 'package:doctors_app/categories%20copy.dart';
import 'package:doctors_app/data.dart';
import 'package:doctors_app/doctors.dart';
import 'package:doctors_app/icon_categories.dart';
import 'package:doctors_app/specialist_doctor.dart';
import 'package:flutter/material.dart';

class Specialist extends StatefulWidget {
  const Specialist({
    Key? key,
  }) : super(key: key);

  @override
  State<Specialist> createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 208, 228, 240),
        automaticallyImplyLeading: false,
        title: Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              SizedBox(height: 5),
              Text('Find Your', style: TextStyle(fontSize: 18)),
              Text('Specialist', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900)),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.comment)),
        ],
      ),
      body: 
        Container(
          color: const Color.fromARGB(255, 208, 228, 240),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                SizedBox(height: 10),
                Container(
                  height: 180,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: getDoctor.length,
                    itemBuilder: (context, index) {
                      print('Rendering doctor: ${getData[index].name}'); 
                      return SpecialistDoctor(doctors: getDoctor[index], datas: getData[index]);
                    },
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Categories', style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                    Container(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('See All', style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                  ],
                ),
                 SizedBox(height: 10,),
                 SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(getCategories.length, (index)=>
                    Padding(padding: EdgeInsets.all(8),
                    child: IconCategories(icon: getCategories[index].icon, 
                    title: getCategories[index].title),
                    )
                    ),
                  ),
                 ),

                  SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('Available Doctor', style: TextStyle(fontSize: 20,color: Colors.black),),
                    ),
                    Container(padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Text('See All', style: TextStyle(fontSize: 18,color: Colors.black),),
                    ),
                  ],
                ),
                SizedBox(height: 15,),
                Column(
                  children: [
                    Container(
                      height: 250,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context,index){
                          return  Available(availableDoctor: demoAvailableDoctors[index]) ;
                        }
                      ),
                    )
                  ],
                )

              ])
          ),
    )
    
    );
 
  }
}
      
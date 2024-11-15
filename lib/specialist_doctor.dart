import 'package:doctors_app/data.dart';
import 'package:doctors_app/data_doctors.dart';
import 'package:doctors_app/doctors.dart';
import 'package:flutter/material.dart';


class SpecialistDoctor extends StatelessWidget {
  const SpecialistDoctor({
    Key? key,
    required this.doctors,
    required this.datas
  }) : super(key: key);
  
  final Doctor doctors;
  final Data datas;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child:GestureDetector(
        onTap: () {
           Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> DataDoctors(datas: datas)));
           },
      child: Container(
          width: 360,
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.blue,
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
                      const Text(
                        "Looking For your Desire\nSpecialist Doctor",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w900,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 2,
                      ),
                      const SizedBox(height: 10),
                      Text(
                        doctors.name,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w900,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctors.speciality,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        doctors.institute,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                        ),
                        overflow: TextOverflow.ellipsis,
                        maxLines: 1,
                      ),
                    ],
                  ),
                  Container(
                    width: 100,
                    height: 120,
                    child: Image.asset(
                      doctors.image,
                      fit: BoxFit.cover, 
                    ),
                  ),
                ],
              ),
            ],
          ),
      ),
    ));
  }}
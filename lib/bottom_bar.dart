// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:doctors_app/available_doctor.dart';
import 'package:doctors_app/doctors_specialist.dart';
import 'package:doctors_app/specialist.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int activeIndex = 0;
  final List<Widget> _pages = [
    Specialist(),
    DoctorsSpecialist(availableDoctor: demoAvailableDoctors),
    Container(), 
    Container(), 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[activeIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedFontSize: 15,
        unselectedFontSize: 15,
        currentIndex: activeIndex,
        onTap: (index) {
          setState(() {
            activeIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: buildIconItem(Icons.home, 'Home', 0),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: buildIconItem(Icons.person, 'Doctors', 1),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: buildIconItem(Icons.note_alt, 'Note', 2),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: buildIconItem(Icons.group, 'Person', 3),
            label: '',
          ),
        ],
      ),
    );
  }

  Widget buildIconItem(IconData icon, String title, int index) {
  bool isActive = activeIndex == index;
  return Container(
    height: 30,
    margin: EdgeInsets.symmetric(horizontal: 10),
    decoration: BoxDecoration(
      color: isActive ? Colors.blue : Colors.transparent,
      borderRadius: BorderRadius.circular(10),  
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(child: 
        Icon(
          icon,
          color: isActive ? Colors.white : Colors.black,
          size: 30,
        ),),
     
        if (isActive) 
          Text(
            title,
            style: TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ],
    
    ),
  );
}}
// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:doctors_app/bottom_bar.dart';
import 'package:flutter/material.dart';





class HomePages extends StatelessWidget {
     const HomePages({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        body: Center(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/WhatsApp Image 2024-10-06 at 10.41.21 AM.jpeg'),
               fit: BoxFit.cover, 
            ),
          ),
          
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 120,),
              Container(
                alignment: Alignment.center,
                child: Text('Gerda', style: TextStyle(fontSize: 50,
                color: Colors.white, fontWeight: FontWeight.bold
                ),),
              ),
SizedBox(height: 20,),
              Column(
                children: [
                  Container(
                    child: MaterialButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(
                      builder: (context)=> BottomBar()));},
                    color: const Color.fromARGB(255, 34, 146, 141),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                    child: Text('Sign up', style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ),
                  ),
SizedBox(height: 20,),
                    Container(
                    child: MaterialButton(onPressed: (){},
                    color: const Color.fromARGB(255, 127, 202, 206),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                    padding: EdgeInsets.symmetric(horizontal: 100,vertical: 15),
                    child: Text('Sign in', style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      )
    );
  }
}
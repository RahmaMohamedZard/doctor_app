// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_super_parameters

import 'package:flutter/material.dart';


class IconCategories extends StatelessWidget {
  const IconCategories({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);
final String icon;
final String title;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 1),
      child: Container(
                    height: 90,
                    width: 100,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          child: Center(
                          child: Image.asset(icon,height: 40,)),),
                          SizedBox(height: 5,),
                          Text(title,style: TextStyle(fontSize: 14,color: Colors.black),)
                      ],
                    )
                  ),
    ) ;
  }
}


import 'package:flutter/material.dart';

Widget categoriesWidget(String imagepath,Color color, String name){
  return Column(
    children: [
      Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
        width: 48,
        height: 48,
        child: Image.asset(imagepath,
        width: 24,
        height: 24,),
      ),
      const SizedBox(height: 10,),
      Text(name,style: const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w400,
        color: Color(0xFF0C1A30),
      ),)

    ],
  );
}
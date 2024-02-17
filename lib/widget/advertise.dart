import 'package:flutter/material.dart';

Widget advertiseWidget(String title,String description,String imagepath){
  return Container(
    width: 400,
    height: 200,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      boxShadow: const [
         BoxShadow(
        color: Color.fromARGB(255, 241, 241, 241),
        blurRadius: 4,
        offset: Offset(10, -30),
      ),
      ]
    ),
    child: Stack(
      children: [
        Positioned(
          right: 0,
          child: Image.asset(imagepath,
          width:250 ,
          height: 200,
          fit: BoxFit.cover,),
        ),
        Positioned(
          left: 0,
          child: Container(
            height: 200,
            width: 260,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(topRight: Radius.circular(100),bottomRight: Radius.circular(100),topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
              color: Color(0xFF3669C9)
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),)
                  ,Text(description,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                    fontWeight: FontWeight.w400,
                  ),)
              ]),
            ),
          ),
        ), 
      ],
    ),
  );
}
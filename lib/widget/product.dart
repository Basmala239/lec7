import 'package:flutter/material.dart';
import 'package:lec7/core/managers/Assets_manager/assets_manager.dart';

Widget productWidget(String imagepath,String name,double price,Function navigation,double rate,int review){
  return Container(

    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.white
    ),
    child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.center,
            child: Image.asset(imagepath,
            width:100 ,
            height: 100,),
          ),
          const SizedBox(height: 10,),
          TextButton(onPressed: (){
            navigation();
          }, child:Text(name,style:const TextStyle(
            color: Color(0xFF0C1A30),
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),),),
          Text('  EGP $price',style:const TextStyle(
           color: Color(0xFFFE3A30),
            fontWeight: FontWeight.w700,
            fontSize: 12,
          ),
          ),
          Row(
            children: [
              const Icon(Icons.star,color: Color(0xFFFFC120),size: 30,),
              Text(' $rate ',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF0C1A30),
          ),),
              Text(' $review Reviews',
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 14,
            color: Color(0xFF0C1A30),
          ),),
          const Spacer(),
          Image.asset(AssetsManager.menuicon)
            ],
          ),
        ],
      ),
    ),
  );
}
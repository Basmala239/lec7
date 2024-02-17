import 'package:flutter/material.dart';

Widget searchHistory(String item){
  return Padding(
    padding: const EdgeInsets.all(18.0),
    child: Row(
      children: [
        const Icon(Icons.watch_later_outlined,
        color: Color(0xFFC4C5C4),),
        const SizedBox(width: 5,),
          Text(item,style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFF0C1A30)
          ),),
        const Spacer(),
        const Icon(Icons.clear,
        color: Color(0xFFC4C5C4))
      ],
    ),
  );
}
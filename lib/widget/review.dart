import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
Widget reviewWidget(String imagePath,String name,double rate,String review){
  return  Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(imagePath),
            const SizedBox(width: 10,),
             Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(name),
                  RatingBar.builder(
                    initialRating: rate,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    maxRating: rate,
                    minRating: rate,
                    itemSize: 20,
                    itemPadding: const EdgeInsets.symmetric(horizontal: 0.0),
                    itemBuilder: (context, _) => const
                    Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating)
                    {
                      
                    },
                  ),
                  Text(review),
                ],
              ),
            
          ],
        ),
        const SizedBox(height: 15,)
      ],
    
  );
}
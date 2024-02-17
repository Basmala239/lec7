import 'package:flutter/material.dart';
import 'package:lec7/core/managers/Assets_manager/assets_manager.dart';
import 'package:lec7/core/managers/view_manage/view_manager.dart';
import 'package:lec7/models/product_model.dart';
import 'package:lec7/models/review_moel.dart';
import 'package:lec7/widget/product.dart';
import 'package:lec7/widget/review.dart';

class DetailScreen extends StatefulWidget {

  const DetailScreen({super.key});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  bool buy=false,favorite=false;
  List<ReviewsModel>reviewList=[
    ReviewsModel(AssetsManager.user2image, 'Andi', 4, 'Lorem ipsum dolor sit amet,\n consectetur adipiscing elit,\n sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua.'),
    ReviewsModel(AssetsManager.user3image, 'Wijaya', 3, 'Lorem ipsum dolor sit amet\n, consectetur adipiscing elit\n, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua.'),
    ReviewsModel(AssetsManager.user4image, 'Krisna', 4, 'Lorem ipsum dolor sit amet\n, consectetur adipiscing elit\n, sed do eiusmod tempor incididunt ut labore et\n dolore magna aliqua.'),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:  IconButton(
          onPressed: (){
            Navigator.pop(context);
          },
         icon:const Icon(Icons.keyboard_arrow_left_outlined,size: 40,))
        ,
        title:const Text('Detail Product',
        style: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500
        ),),
        centerTitle: true,
        actions: [
          Image.asset(AssetsManager.vectoricon),
          const SizedBox(width: 10,),
          if(!buy)
          Image.asset(AssetsManager.shoppingcaricon),
          if(buy)
          Image.asset(AssetsManager.shoppingcarwithdoticon),
          const SizedBox(width: 10,),
        ],
      ),
      body:SingleChildScrollView(child:
      Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: 
              Image.asset(ProductModel.productList[ViewManger.view].imagepath),
            ),
            Text(ProductModel.productList[ViewManger.view].name,
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF0C1A30),
            ),),
            Text('EGP ${ProductModel.productList[ViewManger.view].price}',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16,
              color: Color(0xFFFE3A30),
            ),),
            Row(
              children: [
                const Icon(Icons.star,color: Color(0xFFFFC120),),
                Text(' ${ProductModel.productList[ViewManger.view].rate} ',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF0C1A30),
            ),),
                Text(' ${ProductModel.productList[ViewManger.view].reviews} Reviews',
            style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF0C1A30),
            ),),
              ],
            ),
            const SizedBox(height: 10,),
            const Divider(),
            const SizedBox(height: 10,),
            Row(
              children: [
                Image.asset(AssetsManager.user1image),
                const SizedBox(width: 10,),
                 Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text('BUMDES Desa Sidosari',
            style:  TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 14,
              color: Color(0xFF0C1A30),
            ),),
                    Row(
                      children: [
                        const Text('Verified ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 12,
              color: Color(0xFF0C1A30),
            ),),
                        Image.asset(AssetsManager.doneicon),
                      ],
                    ),
                    
                  ],
                ),
                const Spacer(),
                const Icon(Icons.keyboard_arrow_right,color: Color(0xFF838589),)
              ],
            ),
            const SizedBox(height: 15,),
            const Divider(),
            const SizedBox(height: 15,),
            const Text('Description Product',
            style:  TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 16,
              color: Color(0xFF0C1A30),
            ),),
            const SizedBox(height: 10,),
            const Text('Jenis tanaman pisang memang bermacam macam, namun tidak semua jenis bisa diolah menjadi kripik pisang hanya jenis jenis tertentu saja yang bagus digunakan sebagai bahan baku.\nKripik pisang bisa diolah secara tradisionil atau melalui penggorengan biasa dan bisa juga diolah melalui mesin keripik buah. Kali ini kami akan memperkenalkan jenis kripik pisang yang diolah secara tradisionil, cara pengolahannya tidaklah rumit resep khususnya juga sudah diketahui umum karena cara pengolahan tradisionil keripik pisang adalah salah satu warisan yang turun temurun dikenalkan oleh generasi pendahulu kita.\n',
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
              color: Color(0xFF0C1A30),
            ),),
            const Divider(),
             const SizedBox(height: 20,),
            Row(
              children: [
                Text('All reviews (${ProductModel.productList[ViewManger.view].reviews})'),
                const Spacer(),
                const Icon(Icons.star,color: Color(0xFFFFC120),),
                Text(' ${ProductModel.productList[ViewManger.view].rate} ',
                style: const TextStyle(
              fontWeight: FontWeight.w400,
              fontSize: 14,
              color: Color(0xFF0C1A30),
            ),),
              ],
            ),
             const SizedBox(height: 20,),
            ...List.generate(reviewList.length, (index) => reviewWidget(reviewList[index].imagepath, reviewList[index].name, reviewList[index].rate, reviewList[index].review)),
            const SizedBox(height: 20,),
            Center(
              child: SizedBox(
                width: 350,
                height: 50,
                child: ElevatedButton(onPressed: (){}
                , 
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                ),
                child:const Text('Add Review',style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF0C1A30),
                ),),
                ),
              ),
            ),
            const SizedBox(height: 20,),
             const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Featured Product',style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Color(0xFF0C1A30),
                ),),
                Text('See All',style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF3669C9),
                ),),
                
              ],
            ),
            const SizedBox(height: 10,),
             Container(
              width: double.infinity,
              height: 250,
              child: GridView.count(
              primary: false,
              padding: const EdgeInsets.all(20),
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
              crossAxisCount: 2,
              children:[
                productWidget(ProductModel.productList[0].imagepath, ProductModel.productList[0].name, ProductModel.productList[0].price, (){},ProductModel.productList[0].rate,ProductModel.productList[0].reviews),
                productWidget(ProductModel.productList[1].imagepath, ProductModel.productList[1].name, ProductModel.productList[1].price, (){},ProductModel.productList[1].rate,ProductModel.productList[1].reviews)
              ]
              ),
            ),
            const SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    setState(() {
                      favorite=!favorite;
                    });
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(favorite?const Color(0xFFFE3A30):Colors.white)
                  ),
                   child: !favorite? const Row(children: [
                     Text('Add to favorite',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black
                     ),),
                     Spacer(),
                    Icon(Icons.favorite,color: Color(0xFFFE3A30),)
                   ],):const Row(
                    children: [
                     Text('Added',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white
                     ),),
                    Spacer(),
                    Icon(Icons.favorite, color: Colors.white,)
                   ],)
                   ),
                ),
        
                 SizedBox(
                  
                  height: 50,
                  width: 200,
                 
                   child: ElevatedButton(onPressed: (){
                    setState(() {
                      buy=true;
                    });
                   }, 
                   style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(const Color(0xFF3669C9))
                                   ),
                   child: const Text('Add to Cart',style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.white
                     ),)),
                 )
              ],
            ),
            const SizedBox(height: 10,),
            
          ],
        ),
      ) ,
    ));
  }
}
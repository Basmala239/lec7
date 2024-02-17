import 'package:flutter/material.dart';
import 'package:lec7/core/managers/Assets_manager/assets_manager.dart';
import 'package:lec7/core/managers/view_manage/view_manager.dart';
import 'package:lec7/models/advertise_model.dart';
import 'package:lec7/models/categories_model.dart';
import 'package:lec7/models/product_model.dart';
import 'package:lec7/screens/detail_screen/detail_screen.dart';
import 'package:lec7/screens/search_screen/search_screen.dart';
import 'package:lec7/widget/advertise.dart';
import 'package:lec7/widget/categories.dart';
import 'package:lec7/widget/product.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<AdvertiseModel>advertiseList=[
    AdvertiseModel('Gratis Ongkir \nSelama PPKM!', 'Periode Mei - Agustus 2021', AssetsManager.advertiseimage),
    AdvertiseModel('Gratis Ongkir \nSelama PPKM!', 'Periode Mei - Agustus 2021', AssetsManager.advertiseimage),
    AdvertiseModel('Gratis Ongkir \nSelama PPKM!', 'Periode Mei - Agustus 2021', AssetsManager.advertiseimage),
    AdvertiseModel('Gratis Ongkir \nSelama PPKM!', 'Periode Mei - Agustus 2021', AssetsManager.advertiseimage),
  ];
  List<CategoriesModel>categoriesList=[
    CategoriesModel(AssetsManager.vegetablesicon, 'Vegetables', const Color(0xFFE4F3EA)),
    CategoriesModel(AssetsManager.fruitsicon, 'Fruits', const Color(0xFFFFECE8)),
    CategoriesModel(AssetsManager.eggsicon, 'Eggs', const Color(0xFFFFF6E4)),
    CategoriesModel(AssetsManager.meaticon, 'Meat', const Color(0xFFF1EDFC)),
    CategoriesModel(AssetsManager.fishicon, 'Fish', const Color(0xFFE4F3EA)),
    CategoriesModel(AssetsManager.vegetablesicon, 'Vegetables', const Color(0xFFE4F3EA)),
    CategoriesModel(AssetsManager.fruitsicon, 'Fruits', const Color(0xFFFFECE8)),
    CategoriesModel(AssetsManager.eggsicon, 'Eggs', const Color(0xFFFFF6E4)),
    CategoriesModel(AssetsManager.meaticon, 'Meat', const Color(0xFFF1EDFC)),
    CategoriesModel(AssetsManager.fishicon, 'Fish', const Color(0xFFE4F3EA)),
  ];
  
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        children: [
         SearchBar(
          trailing: const  [
            Icon(Icons.search),
          ],
          hintText: 'Search Product Name',
          hintStyle:MaterialStateProperty.all(
            const TextStyle(
                  color: Color(0xFFC4C5C4),
                  fontWeight: FontWeight.w500,
                  fontSize: 14
          ),),
          onTap: () {
                Navigator.push(context, MaterialPageRoute(builder:(context)=> const SearchScreen()));
              },
         ),
          const SizedBox(height: 10,),
          Container(
          height: 250,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: advertiseList.length,
              itemBuilder: (context, index) => advertiseWidget(advertiseList[index].title, advertiseList[index].description, advertiseList[index].imagepath)
              ,
              separatorBuilder: (context, index) => const SizedBox(width: 15,) ,
            ),
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Categories',style: TextStyle(
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
          height: 80,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemCount: categoriesList.length,
              itemBuilder: (context, index) => categoriesWidget(categoriesList[index].imagepath, categoriesList[index].color, categoriesList[index].name)
              ,
              separatorBuilder: (context, index) => const SizedBox(width: 15,) ,
            ),
          ),
          const SizedBox(height: 40,),
          Container(
            width: double.infinity,
            color:const  Color(0xFFFAFAFA),
            child: Column(
              children: [
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
          const SizedBox(height: 20,),
          Container(
            width: double.infinity,
            height: 500,
            child: GridView.count(
            primary: false,
            padding: const EdgeInsets.all(20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 2,
            children: ProductModel.productList.map((e) => productWidget(
              e.imagepath,
              e.name,
              e.price,
              (){
                setState(() {
                  ViewManger.view=ProductModel.productList.indexOf(e);
                });
                Navigator.push(context, MaterialPageRoute(builder: (context)=>const DetailScreen()));
              },
              e.rate,
              e.reviews
            )
            ).toList(),
            
            ),
          )
        ],
      ),
    )])));
  }
}

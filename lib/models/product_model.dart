import 'package:lec7/core/managers/Assets_manager/assets_manager.dart';

class ProductModel{
  String imagepath;
  String name;
  double price;
  double rate;
  int reviews;
  ProductModel(this.imagepath,this.name,this.price,this.rate,this.reviews);
  static final productList=[
    ProductModel(AssetsManager.tomato1image, 'knorr', 3.75,4.6,20),
    ProductModel(AssetsManager.tomato2image, 'Harfast', 29.95,3.5,30),
    ProductModel(AssetsManager.tomato3image, 'Tomato', 16.25,5,40),
    ProductModel(AssetsManager.tomato4image, 'Heinz', 35.65,2.9,70),
    ProductModel(AssetsManager.tomato5image, 'Heinz', 10.95,3.58,50),
    ProductModel(AssetsManager.tomato6image, 'knorr', 27.45,4.3,60),
  ];
}

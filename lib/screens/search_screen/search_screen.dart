import 'package:flutter/material.dart';
import 'package:lec7/widget/available_item_search.dart';
import 'package:lec7/widget/search_historh.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final controller =TextEditingController();
  List<String>searchItems=[
      'knorr', 'Harfast','Tomato','Heinz', 'Heinz', 'knorr',
      'Daucus carota','Brassica oleracea','Brassica rapa','Raphanus sativus',
      'Pastinaca sativa','Lactuca sativa','Vicia faba','	Pisum sativum','melongena'
    ];
    bool history=true;
    List<String>matchQuery =[ ];
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
        title:const Text('Search'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(
              color:const Color(0xFFFAFAFA),
              borderRadius: BorderRadius.circular(10),
            ),
            margin:const EdgeInsets.all(20),
            child: Padding(
              padding: const EdgeInsets.only(left:8.0),
              child: TextField(
                controller: controller,
                decoration:const  InputDecoration(
                hintText: 'Search Product Name',
                hintStyle:  TextStyle(
                  color: Color(0xFFC4C5C4),
                  fontWeight: FontWeight.w500,
                  fontSize: 14
                ),
                suffixIcon: Icon(Icons.search),
                
                ),
                onChanged: view,
              ),
            ),
          ),
          const SizedBox(height: 15,),
          if(history)
          Column(
            children: [
              const Row(
            children: [
              SizedBox(width: 18,),
              Text('Search history',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFF0C1A30)
              ),),
            ],
          ),
          const SizedBox(height: 10,),
           Container(
            width: double.infinity,
            height: 400,
             child: ListView.builder(
                       itemCount: 3,
                       itemBuilder: (context,index){
              return searchHistory(searchItems[index]);
                       }),
           )
          
            ],
          ),
          if(!history)
          Column(
            children: [
              const Row(
            children: [
              SizedBox(width: 18,),
              Text('Available items',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 14,
                color: Color(0xFF0C1A30)
              ),),
            ],
          ),
          const SizedBox(height: 10,),
           Container(
            width: double.infinity,
            height: 400,
            child: ListView.builder(
          itemCount: matchQuery.length,
          itemBuilder: (context,index){
            return availableItemSearch(matchQuery[index]);
          })
          )
            ],
          ),
        ],
      ) ,
    );
  }
  void view(String query){
    
    matchQuery.clear();
    for( var item in searchItems){
      if(item.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(item);
      }
    }
    if(query==''){
      setState(() {
        history=true;
      });
    }else{
      setState(() {
        history=false;
      });
    }

  }
}
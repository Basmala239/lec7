import 'package:flutter/material.dart';
import 'package:lec7/core/managers/Assets_manager/assets_manager.dart';
import 'package:lec7/models/bottom_bar_model.dart';
import 'package:lec7/screens/home_screen/home_screen.dart';
import 'package:lec7/screens/jasa_screen/jasa_screen.dart';
import 'package:lec7/screens/login_sceen/login_sceen.dart';
import 'package:lec7/screens/order_screen/order_screen.dart';

class HomeLayout extends StatefulWidget {
  const HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  List<Widget>screens=[
    const HomeScreen(),
    const JASAScreen(),
    const OrderScreen(),
    const LoginScreen()
  ];
  List<BottomBarModel>items=[
    BottomBarModel(AssetsManager.homeicon,'HOME'),
    BottomBarModel(AssetsManager.jasaicon,'JASA'),
    BottomBarModel(AssetsManager.bagicon,'ORDER'),
    BottomBarModel(AssetsManager.profileicon,'LOGIN'),
  ];
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: const Text('BUMDES',style: 
        TextStyle(
          color: Color(0xFF3669C9),
          fontSize: 18,
          fontWeight: FontWeight.w700
        ),),
        centerTitle: true,
        actions: [
          Image.asset(AssetsManager.bellicon),
          const SizedBox(width: 10,),
          Image.asset(AssetsManager.shoppingcarwithdoticon),
          const SizedBox(width: 10,),
        ],
      
      ),
      body:screens[_currentIndex] ,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
          items: items
              .map((e) =>
              BottomNavigationBarItem(
                  icon: Image(
                    image: AssetImage(e.iconpath),
                    color: _currentIndex == items.indexOf(e) ?
                   const Color(0xFF3669C9) :
                    Colors.black,
                    width: 30,
                  ),
                  label: e.label))
              .toList(),
        unselectedIconTheme: const IconThemeData(
          color: Colors.black
        ),
        unselectedLabelStyle:const TextStyle(
          color: Colors.black
        ),
        selectedIconTheme:const IconThemeData(
          color: Color(0xFF3669C9),
        ),
        selectedLabelStyle: const TextStyle(
          color: Color(0xFF3669C9)
        ),
        currentIndex: _currentIndex,
        onTap: (value) {
          setState(() {
            _currentIndex=value;
          });
        },
        ),
    );
  }
}
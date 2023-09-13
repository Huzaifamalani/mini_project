
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:project/categories.dart';
import 'package:project/constants/constant.dart';
import 'package:project/favourite.dart';
import 'package:project/homeview.dart';


class BottonNavigate extends StatefulWidget {
  const BottonNavigate({Key? key}) : super(key: key);

  @override
  _BottonNavigateState createState() => _BottonNavigateState();
}

class _BottonNavigateState extends State<BottonNavigate> {

  final items = const [
    Icon(Icons.home_filled, size: 30,color: Colors.yellow,),
    Icon(Icons.category, size: 30,color: Colors.yellow,),
    Icon(Icons.favorite_border, size: 30,color: Colors.yellow,),
    Icon(Icons.more_vert, size: 30,color: Colors.yellow,)
  ];

  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      bottomNavigationBar: CurvedNavigationBar(
        color: CusColors.navigatorbar,
        buttonBackgroundColor: Colors.black,
        backgroundColor: Colors.transparent,
        items: items,
        index: index,
        onTap: (selctedIndex){
          setState(() {
            index = selctedIndex;
          });
        },
        height: 70,
      
        animationDuration: const Duration(milliseconds: 300),
        // animationCurve: ,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: Alignment.center,
        child: getSelectedWidget(index: index)
      ),
    );
  }

  Widget getSelectedWidget({required int index}){
    Widget widget;
    switch(index){
      case 0:
        widget =  Homeview();
        break;
      case 1:
        widget =  Categories();
        
        break;
      default:
        widget =  Favouirate();
        break;
    }
    return widget;
  }
}
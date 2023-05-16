import 'package:flutter/material.dart';
import 'package:flutter_internship_project/Frame1/frame1.dart';
class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _currentIndex = 0;

  void _onTabSelected(int index) {
    setState(() {
       _currentIndex = index;
      if(index==0)
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Frame1()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20,),
      margin: EdgeInsets.only(bottom: 20,left: 30,right: 30),
      height: 56,
      width: 318,
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
        borderRadius: BorderRadius.circular(30),
      ),
      child: BottomNavigationBar(
        backgroundColor: Color(0xfffafafa),
        elevation: 0,
        iconSize: 26,
        currentIndex: _currentIndex,
        onTap: _onTabSelected,
        selectedFontSize: 14,
        unselectedFontSize: 14,
        selectedItemColor: Color(0xffACCB39),
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_sharp),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled,),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_rounded),
            label: '',
          ),
        ],
      ),
    );
  }
}

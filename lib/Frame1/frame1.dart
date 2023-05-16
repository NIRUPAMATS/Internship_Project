import 'package:flutter/material.dart';
import 'package:flutter_internship_project/Frame1/bottomNavigationBar.dart';
import 'package:flutter_internship_project/Frame1/horizontal_cards.dart';
import 'package:flutter_internship_project/Frame1/vertical.dart';
import 'package:flutter_internship_project/Frame4/frame4.dart';

class Frame1 extends StatefulWidget {
  const Frame1({Key? key}) : super(key: key);

  @override
  State<Frame1> createState() => _Frame1State();
}

class _Frame1State extends State<Frame1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Color(0xffE5E5E5),
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu,color: Color(0xff454545),size: 28,),
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>Frame4()));
          },
        ),
        title: Text('Hi, John!',
          style: TextStyle(color: Color(0xff47505A),fontSize: 20,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(84.0),
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 24.0, vertical: 4.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              color: Color(0xffF7F7F7),
            ),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                hintStyle: TextStyle(color: Color(0xff6A6A6D),fontSize: 18,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),
                prefixIcon: Icon(Icons.search,color: Color(0xff6A6A6D),),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28,left: 22,right: 28,bottom: 0),
            child: Row(
              children: [
                Text('Recommendation',
                  style: TextStyle(color: Color(0xff647039),fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 19,),
                  child: Text('Black Tea',
                    style: TextStyle(color: Color(0xff47505A),fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),
                  ),
                ),
                Text('Green Tea',
                  style: TextStyle(color: Color(0xff47505A),fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 83),
            child: Icon(Icons.circle,color: Color(0xff647039) ,size: 9,)
          ),
          Container(
            height:173 ,
            padding: EdgeInsets.only(left: 16.5,top: 15),
            child: Horizontal_Cards(),
          ),
          SizedBox(height: 20,),
          Stack(
            children: [
              Image.asset('images/Rectangle1.png'),
              // Align(
              //   alignment: Alignment.centerLeft,
              //   child: Image.asset('images/Rectangle2.png'),
              // )
            ],
          ),
          SizedBox(height: 35,),
          Padding(
            padding: const EdgeInsets.only(left: 22.0,bottom: 12),
            child: Text('Will Buy',
              style: TextStyle(color: Color(0xff262424),fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),
            ),
          ),
          Container(
            height: 185,
            width: 360,
            //color: Colors.red,
            child: Vertical(),
          )
        ],
      ),
      bottomNavigationBar:Bottom(),
    );
  }
}

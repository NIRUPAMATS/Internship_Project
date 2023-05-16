import 'package:flutter/material.dart';
class Vertical extends StatelessWidget {
  const Vertical({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ListView(
      scrollDirection: Axis.vertical,
      children: [
        buildCard('Bubble Tea','Good day time','images/Rectangle 212.png','56.99'),
        buildCard('Purple Tea','Happy Hours','images/Rectangle 214.png','25.99')
      ],
    );
  }
}
Widget buildCard(String text1,String text2,String imagePath,String price){
  return Row(
    children: [
      Stack(
        children:[
          Container(
            margin: EdgeInsets.symmetric(vertical: 8,horizontal: 22),
            height: 76 ,
            width: 84,
            decoration: BoxDecoration(
                color: Color(0xffE2F697),
                borderRadius: BorderRadius.circular(15)
            ),
         ),
          Positioned(
          bottom: 8,
          left: 22,
          child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset('images/Ellipse 153.png',width: 70,))
          ),
          Positioned(
              bottom: 16,
              left: 31,
              child: Image.asset(imagePath)
          ),
        ],
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(text1,
            style: TextStyle(color: Color(0xff647039),fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans'),
          ),
          SizedBox(height: 4,),
          Text(text2,
            style: TextStyle(color: Color(0xff707070),fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans'),
          ),
        ],
      ),
      SizedBox(width: 63,),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('\$',
            style: TextStyle(color: Colors.grey,fontSize: 16,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans'),
          ),
          Text(price,
            style: TextStyle(color: Color(0xff647039),fontSize: 22,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans'),
          ),
        ],
      )
    ],
  );
}

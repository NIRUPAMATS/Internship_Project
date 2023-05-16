import 'package:flutter/material.dart';
import 'package:flutter_internship_project/Frame2/frame2.dart';
class Horizontal_Cards extends StatelessWidget {
  const Horizontal_Cards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        BuildCard(context,'images/image 2.png', 'Lemon Tea'),
        BuildCard(context,'images/image 3.png', 'Black Tea'),
        BuildCard(context,'images/image 4.png', 'Green tea'),
      ],
    );
  }
}
Widget BuildCard(context,String imagePath,String text){
  return Container(
    width: 122,
    height: 158,
    margin: EdgeInsets.symmetric(horizontal: 2),
    child: GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Frame2()));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        elevation: 0,
        color: Color(0xffEBFFA2),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Image.asset(imagePath),
            ),
            Positioned(
              bottom: 10,
              left: 20,
              child: Text(text,
                style: TextStyle(color: Color(0xff647039),fontSize: 16,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans'),
              ),
            )
          ],
        ),

      ),
    ),
  );
}
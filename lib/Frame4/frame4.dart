import 'package:flutter/material.dart';
import 'package:flutter_internship_project/Frame1/frame1.dart';
class Frame4 extends StatelessWidget {
  const Frame4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('images/Ellipse 158.png'),
          Image.asset('images/Ellipse 156.png'),
          Positioned(
            top: 48,
            left: 30,
            child: CircleAvatar(child: Image.asset('images/Ellipse 157.png',),
              backgroundColor: Colors.white,
              radius: 65,
            ),
          ),
          Positioned(
            left: 176,
            top: 126,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('John Tim',
                  style: TextStyle(color: Color(0xff47505A),fontSize: 20,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),
                ),
                Text('Edit Profile',
                  style: TextStyle(color: Color(0xff47505A),fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),
                ),
              ],
            ),
          ),
          Positioned(
            top: 40,
              right:15 ,
              child: IconButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Frame1()));
                },
                icon: Icon(Icons.arrow_back_ios,size: 29,),
              )
          ),
          Positioned(
              top: 232 ,
              child:Image.asset('images/Line 1.png')
          ),
          Positioned(
            top: 251,
            child: Padding(
              padding: const EdgeInsets.only(left: 45),
              child: Column(
                children: [
                  RichText(
                    text: TextSpan(
                      style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),
                      children: [
                        TextSpan(text: 'Categories\n'),
                        WidgetSpan(child: SizedBox(height: 37)),
                        TextSpan(text: 'Your Orders\n'),
                        WidgetSpan(child: SizedBox(height: 37)),
                        TextSpan(text: 'Wishlist\n'),
                        WidgetSpan(child: SizedBox(height: 37)),
                        TextSpan(text: 'FAQs\n'),
                        WidgetSpan(child: SizedBox(height: 37)),
                        TextSpan(text: 'Log Out'),
                      ],
                    ),
                  )

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

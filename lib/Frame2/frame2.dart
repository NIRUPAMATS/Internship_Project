import 'package:flutter/material.dart';
import 'package:flutter_internship_project/Frame2/bottomNavigationBar.dart';

import '../Frame1/frame1.dart';
class Frame2 extends StatelessWidget {
  const Frame2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffEBFFA2),
            ),
            Positioned(
                top: 36,
                left:30 ,
                child: IconButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Frame1()));
                  },
                  icon: Icon(Icons.arrow_back_ios,size: 29,color: Colors.white,),
                )
            ),
            Positioned(
              right: 0,
              child: Image.asset('images/Ellipse 154.png',scale: 0.96,),
            ),
            Positioned(
                bottom: 0,
                child: Container(
                  height:479 ,
                  width: 360,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30.0,top: 28),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Particulars',style: TextStyle(color: Color(0xff3A460D),fontSize: 24,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),),
                        Padding(
                          padding: const EdgeInsets.only(top: 10.0,bottom: 8,right: 17),
                          child: Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
                              style: TextStyle(color: Color(0xff647039),fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: [
                              Icon(Icons.star_rate_rounded,color: Color(0xffACCB39),size: 22,),
                              Icon(Icons.star_rate_rounded,color: Color(0xffACCB39),size: 22,),
                              Icon(Icons.star_rate_rounded,color: Color(0xffACCB39),size: 22,),
                              Icon(Icons.star_rate_rounded,color: Color(0xffACCB39),size: 22,),
                              Icon(Icons.star_rate_rounded,color: Color(0xffACCB39),size: 22,),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEFF5CA),
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text('500 ml',style: TextStyle(color: Color(0xff647039),fontSize: 12,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),),
                                  )
                              ),
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              margin: EdgeInsets.symmetric(horizontal: 12),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEFF5CA),
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text('Less Ice',style: TextStyle(color: Color(0xff647039),fontSize: 12,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),),
                                  )
                              ),
                            ),
                            Container(
                              width: 64,
                              height: 64,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color(0xffEFF5CA),
                              ),
                              child: Align(
                                  alignment: Alignment.bottomCenter,
                                  child: Padding(
                                    padding: const EdgeInsets.only(bottom: 5.0),
                                    child: Text('Sugar',style: TextStyle(color: Color(0xff647039),fontSize: 12,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),),
                                  )
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 33,bottom: 4),
                          child: Text('Services',style: TextStyle(color: Color(0xff3A460D),fontSize: 24,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),),
                        ),
                        Text('Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries,',
                          style: TextStyle(color: Color(0xff647039),fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),
                        ),
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
              top: 152, left: 29,width: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 9),
                      child: Text('Lemon Tea', style: TextStyle(color: Color(0xff647039),fontSize: 24,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),),
                    ),
                    Text('Good day time', style: TextStyle(color: Color(0xff707070),fontSize: 12,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),),
                    SizedBox(height: 28,),
                    Center(child: Text('12.99',style: TextStyle(color: Color(0xff647039),fontSize: 50,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',),))
                  ],
                ),
            ),
            Positioned(
              top: 225,left: 22,
                child:Text('      \$',style: TextStyle(color: Color(0xff647039).withOpacity(0.5),fontSize: 20,fontWeight: FontWeight.w400,fontFamily: 'Nunito Sans',),),

            ),
            Positioned(
              right: 45,
              top: 142,
              child: Image.asset('images/image 2.png',scale: 0.5,),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Bottom(),
    );
  }
}

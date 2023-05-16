import 'package:flutter/material.dart';
class Bottom extends StatefulWidget {
  const Bottom({Key? key}) : super(key: key);

  @override
  State<Bottom> createState() => _BottomState();
}

class _BottomState extends State<Bottom> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
      ),
      child: Container(
        height: 96,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 0;
                });
              },
              icon: Icon(Icons.history,color: Colors.grey,size: 30,),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  _selectedIndex = 1;
                });
              },
              icon: Icon(Icons.favorite_border_rounded,color: Colors.grey,size: 30,),
            ),
            Container(
              height: 50,
              width: 200,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15)
              ),
              child: ElevatedButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                  backgroundColor: MaterialStateProperty.all<Color>(Color(0xffA6CE16)),
                ),
                onPressed: () {
                  setState(() {
                    _selectedIndex = 2;
                  });
                },
                child: Text('Purchase ',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w700,fontFamily: 'Nunito Sans',)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

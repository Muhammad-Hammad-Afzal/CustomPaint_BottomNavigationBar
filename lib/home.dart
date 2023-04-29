import 'package:custom_paint/bookmark.dart';
import 'package:custom_paint/manu.dart';
import 'package:custom_paint/notification.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final pages= [
    Text('home', style: TextStyle(color: Colors.white),),
    Manu(),
  ];

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white10,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: size.width,
              height: size.height * .13,
              //color: Colors.white,
              child: Stack(
                children: [
                  CustomPaint(
                    size: Size(size.width, size.height * .13),
                    painter: BNBpainter(),
                  ),
                  Center(
                    heightFactor: .5,
                    child: FloatingActionButton(onPressed: (){},
                        backgroundColor: Colors.orange,
                    child: Icon(Icons.shopping_basket)),
                  ),
                  Container(
                    width: size.width,
                    height: size.height * .13,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        IconButton(onPressed: (){
                          pages[0];
                        }, icon: Icon(Icons.home)),


                        IconButton(onPressed: (){}, icon: Icon(Icons.restaurant_menu)),



                        Container(width: size.width*.15),
                        IconButton(onPressed: (){}, icon: Icon(Icons.bookmark)),


                        IconButton(onPressed: (){}, icon: Icon(Icons.notifications)),
                      ],
                    ),
                  )

                ],
              ),
            ),
          ),

        ],
      ),
    );
  }
}

class BNBpainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()..color = Colors.white..style = PaintingStyle.fill;
    Path path = Path()..moveTo(0, 20);
    path.quadraticBezierTo(size.width * .20, 0, size.width * .35, 0);
    path.quadraticBezierTo(size.width * .40, 0, size.width * .40, 20);
    path.arcToPoint(Offset(size.width * .60, 20),
        radius: Radius.circular(10),clockwise: false);
    path.quadraticBezierTo(size.width * .60, 0, size.width * .65, 0);
    path.quadraticBezierTo(size.width * .80, 0, size.width , 20);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);
    path.close();


    canvas.drawShadow(path, Colors.black, 5, true);
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }

}

class HomeScreen1 extends StatefulWidget {
  const HomeScreen1({Key? key}) : super(key: key);

  @override
  State<HomeScreen1> createState() => _HomeScreen1State();
}

class _HomeScreen1State extends State<HomeScreen1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Center(child: Text('this is home'),),
    );
  }
}


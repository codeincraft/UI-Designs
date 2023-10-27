import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.redAccent,
          title: Text('Curve'),
        ),
        body: Center(
          child: ClipPath(
            clipper: HomePageClipper(),
            child: Container(
              height: MediaQuery.of(context).size.height * 0.6,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.red, Colors.redAccent,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomRight,),
              ),
            ),
          ),
        ),
      
      
    );
  }
}

class HomePageClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundEdges = 50.0;
    var path = Path();
  path.moveTo(0, size.height * 0.33);
  //bottom left
  path.lineTo(0, size.height -roundEdges);
  // QudraticBezier
  path.quadraticBezierTo(0, size.height, roundEdges, size.height);

  //bottomRight
  path.lineTo(size.width - roundEdges, size.height);
  path.quadraticBezierTo(size.width, size.height, 
  size.width, size.height - roundEdges);

  //topRIght
  path.lineTo(size.width, roundEdges * 2);
  path.quadraticBezierTo(size.width, 0, 
  size.width - roundEdges * 3, roundEdges * 2 );
  
  //TopLeft
  path.lineTo(roundEdges, size.height * 0.33 + 10);
  path.quadraticBezierTo(0, size.height * 0.33 + roundEdges, 
  0, size.height * 0.33 + roundEdges * 2 );

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

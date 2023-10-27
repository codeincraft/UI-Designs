import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HomePage',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: const Text('HomePage'),
        ),
        body: ClipPath(
          child: Container(
            color: Color.fromARGB(255, 126, 0, 0),
            height: 300,
            child: const Center(
              child: Text(
                'ClipPat',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                ),
              ),
            ),
          ),
          clipper: MyCurve(),
        ),
      ),
    );
  }
}

class MyCurve extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
   path.lineTo(0, size.height / 2);
   path.cubicTo(size.width / 4, 3 * (size.height / 2) , 3 * (size.height / 4), 
   size.height / 2, size.width, size.height * 0.9);
   path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}

// class Shape extends StatelessWidget {
//   const Shape({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Shape',
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Curved Shapes'),
//           backgroundColor: Color.fromARGB(255, 255, 193, 100),
//         ),
//         body: Container(
//           child: Stack(
//             children: [
//               Opacity(
//                 opacity: 0.5,
//                 child: ClipPath(
//                   clipper: StylishClipper(),
//                   child: Container(
//                     color: Colors.grey,
//                     height: 200,
//                   ),
//                 ),
//               ),
//               ClipPath(
//                 clipper: StylishClipper(),
//                 child: Container(
//                   color: Colors.grey,
//                   height: 180,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// class StylishClipper extends CustomClipper<Path> {
//   @override
//   Path getClip(Size size) {
//     debugPrint(size.width.toString());
//     var path = new Path();
//     path.lineTo(0, size.height);
//     var startFirst = Offset(size.width / 5, size.height);
//     //1st point Bezier curve
//     var endFirst = Offset(size.width / 2.25, size.height - 50);
//     // sencond point of bezier curve
//     path.quadraticBezierTo(
//         startFirst.dx, startFirst.dy, endFirst.dx, endFirst.dy);

//     var startSecond =
//         Offset(size.width - (size.width / 3.24), size.height - 105);
//     //third point of bezier curve
//     var endSecond = Offset(size.width, size.height - 10);
//     //fourth point pf bezier curve
//     path.quadraticBezierTo(
//         startSecond.dx, startSecond.dy, endSecond.dx, endSecond.dy);
//     path.lineTo(size.width, 0);
//     path.close();
//     return path;
//   }

//   @override
//   bool shouldReclip(oldClipper) => false;
//   // bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
//   //   // TODO: implement shouldReclip
//   //   // throw UnimplementedError();
//   // }

// }

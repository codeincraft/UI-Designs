// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BlackLayer extends StatelessWidget {
  const BlackLayer({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
     final height = MediaQuery.of(context).size.height;
    // final width = MediaQuery.of(context).size.width;
    var outlineInputBorder = OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                    ),
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    )
                  );
    return Scaffold(
      backgroundColor: Color.fromARGB(115, 0, 0, 0),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: (){},
        ),
        actions: [
          IconButton(
            onPressed: (){}, 
            icon: CircleAvatar(
              backgroundImage: NetworkImage('https://images.unsplash.com/photo-1664403175206-d9d8251dd2ee?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
              backgroundColor: Colors.black26,
            ))
        ],
      ),
      body: DefaultTextStyle(
        // Google font. //this is to make sure you have a consistent text all through.
        style: GoogleFonts.raleway(color: Colors.white),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              // Welcome area..
              Text('Hello Nuel',
              style: TextStyle(
                fontSize: 30,
              ),
              ),
              SizedBox(height: 5,),
              Text('Check Your City Weather',
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w700,
              ),
              ),
              SizedBox(height: 50,),
              // Search City 
              TextField(
                decoration: InputDecoration(
                  border: outlineInputBorder,
                  enabledBorder: outlineInputBorder,
                  focusedBorder: outlineInputBorder,
                  hintText: 'Search City',
                  hintStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                  suffix: Icon(Icons.search, color: Colors.white,),
                ),
              ),
              SizedBox(height: 80,),
              // My Location
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                children: [
                  Text('My Location',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                  ),
                  ),
                  OutlinedButton(
                    onPressed: (){}, 
                    child: Icon(Icons.more_horiz),
                    style: OutlinedButton.styleFrom(
                      primary: Colors.white,
                      side: BorderSide(width: 1, color: Colors.white),
                      shape: CircleBorder()
                    ),
                    ),
                ],
              ),
              SizedBox(height: 30,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  for (var location in locations)
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Stack(
                      alignment: AlignmentDirectional.center,
                      children: [
                        ColorFiltered(
                          colorFilter: ColorFilter.mode(
                            Colors.black45, 
                            BlendMode.darken),
                          child: Image.network(
                            location.imageUrl, 
                           height: height * 0.25, 
                          //  width: width * 0.40,
                          ),
                        ),
                        Column(
                          children: [
                            Text(
                              location.text,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 19,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              location.timing,
                            ),
                            SizedBox(height: 40,),
                            Text(
                              location.temperature.toString() + '',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                             SizedBox(height: 40,),
                             Text(location.weather),
                          ],
                        )
                      ],
                    ),
                  ),
                  
                ],
              )
            ],
          ), 
        ),
      ),
      
    );
  }
}

class Location {
  final dynamic text;
  final dynamic timing;
  final int? temperature;
  final dynamic weather;
  final dynamic imageUrl;

  Location({
    this.text,
    this.timing,
    this.temperature,
    this.weather,
    this.imageUrl,
  });
}

final locations = [
  Location(
    text: 'Lagos',
    timing: '10:44 am',
    temperature: 15,
    weather: 'Rainy',
    imageUrl: 'https://images.unsplash.com/photo-1664413649138-4d73827df6c2?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=928&q=80'
  ),
   Location(
    text: 'Awka',
    timing: '10:44 am',
    temperature: 30,
    weather: 'Sunny',
    imageUrl: 'https://images.unsplash.com/photo-1664461992952-84051ec895dd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=870&q=80'
  ),
];

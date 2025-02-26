import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bio Link',
      home: MyHomePage(title: 'Bio Link'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final String name="Rima";
  final String bio="Hey there!";


  Widget build_button(context) {
    return Scaffold(
      body: Center(
        child: Text("Hello"),
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Stack(
          clipBehavior: Clip.none,
          children: [
          
          Container(
            height:600,
            width:400,
            margin: EdgeInsets.only(top: 100),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                          Color(0xFFbfcbff), // Light Blue
                          Color(0xFF4f72fe), // Darker Blue
                        ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
              borderRadius: BorderRadius.circular(45),

            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 0),
                Text(
                  name,
                  style: TextStyle(
                    fontSize:35,
                    color:Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                SizedBox(height: 0),
                Text(
                  bio,
                  style: TextStyle(
                    fontSize:20,
                    color:Colors.black,
                    
                  ),
                ),
              ],
            ),
          ),

          Positioned(
            top: 20, 
            left: 0,
            right: 0,
            child:Center(
            child: Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: Colors.white, // Stroke color
                  width: 2, // Stroke width
                ),
                boxShadow: [ BoxShadow(
                  color: Colors.blue.withOpacity(0.17),
                  spreadRadius: 10,
                  blurRadius: 20,
                  offset: Offset(3, 3),
                ),
                ],
              ),
              
            
              child: CircleAvatar(
                radius: 75,
                backgroundImage: AssetImage('assets/rima.jpeg'),
              ),
            ),
            ),
          ),
          
          ],
        ),
        
      ),
      
    );
  
      
    
}
}

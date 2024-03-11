import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Figma Payment App 1st screen',
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.greenAccent),
            useMaterial3: true,
          ),
          home: child,
        );
      },
      child: home(),
    );
  }
}

class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Upper Bar
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Time
              Expanded(
                child: Text(
                  "9:41",
                  style: TextStyle(fontSize: 14),
                ),
              ),

              // Icons
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 21, vertical: 7),
                child: Container(
                  child: Row(
                    children: [
                      // Icon 1
                      Icon(Icons.network_cell, size: 14),
                      // Icon 2
                      Icon(Icons.wifi, size: 14),
                      // Icon 3
                      Icon(Icons.battery_3_bar_outlined, size: 14),
                    ],
                  ),
                ),
              ),
            ],
          ), // Upper Bar Over

          SizedBox(
            height: 135,
          ),
          Center(
            child: Column(
              children: [
                Container(
                  child: Image.network(
                    "https://i.ibb.co/zmxL2L4/Plain-credit-card-bro-1.png",
                    height: 360,
                    width: 360,
                  ),
                ),
                SizedBox(
                  height: 40,
                ),

                Text(
                  "Transactions that\nare fast and easy.",
                  style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
                ),

                SizedBox(
                  height: 40,
                ),

                //3 dots
                Center(
                  child: Row(
                    //crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      //green dot
                      Container(
                        width: 20,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xFF7FC014),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                  
                      SizedBox(
                        width: 8,
                      ),
                      //grey dot 1
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      //grey dot 2
                      Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: Color(0xFFC4C4C4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                    ],
                  ),

                  
                ),
                SizedBox(height: 64,),

                Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     //textbutton for skip
                    TextButton(onPressed: (){},
                   child: Text("Skip",
                   style: TextStyle(fontSize: 18, color: Colors.black),)),


                  SizedBox(width: 60,),

                   //row for get started
                   Container(
                    height: 68,
                    width: 208,
                    decoration: BoxDecoration(
                      color: Color(0xFF7FC014),
                      borderRadius: BorderRadius.circular(12),
                    ),
                     child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,

                      children: [
                        //get started
                        Text("Get started",style: TextStyle(fontSize: 18, color: Colors.white),),
                     
                     SizedBox(width: 6,),
                        //icon
                        Image.network("https://i.ibb.co/y56WvdH/login.png", height: 28, width: 28,),
                      ],
                     ),
                   )
                  ]
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

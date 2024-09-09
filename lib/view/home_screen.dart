import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    // TO MAKE APP RESPONSIVE
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    log("${deviceWidth * 0.617}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 33, 37, 1),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 51, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "PixelsCo.",
                    style: GoogleFonts.dmSans(
                        fontSize: deviceWidth * 0.054, //22
                        fontWeight: FontWeight.w600,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Stack(
                    children: [
                      Image.asset(
                        "assets/images/bag.png",
                        height: deviceWidth * 0.060, //24
                        width: deviceWidth * 0.060, //24
                      ),
                      Positioned(
                          top: 3,
                          left: deviceWidth * 0,
                          child: Container(
                            padding: const EdgeInsets.all(4),
                            width: deviceWidth * 0.035,
                            height: deviceWidth * 0.035,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Color.fromRGBO(86, 93, 107, 1),
                            ),
                            child: Text(
                              "1",
                              textAlign: TextAlign.center,
                              style: GoogleFonts.dmSans(
                                  fontSize: deviceWidth * 0.017,
                                  color: const Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ))
                    ],
                  ),
                ],
              ),
              Container(
                padding: const EdgeInsets.only(top: 25, left: 22, bottom: 25),
                margin: const EdgeInsets.only(top: 50),
                width: deviceWidth,
                height: deviceWidth * 0.39,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    gradient: const LinearGradient(colors: [
                      Color.fromRGBO(72, 76, 87, 1),
                      Color.fromRGBO(29, 31, 35, 1),
                    ]),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(0, 30),
                        blurRadius: 40,
                        spreadRadius: 0,
                      )
                    ]),
                child: Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "New Vintage\nCollection",
                          style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w600,
                              fontSize: deviceWidth * 0.05, //20
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              letterSpacing: 2),
                        ),
                        //const SizedBox(height: 2,),
                        Container(
                          // margin: const EdgeInsets.only(top: 10),
                          width: deviceWidth * 0.249,
                          height: deviceWidth * 0.080,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              gradient: const LinearGradient(
                                  //begin: Alignment(0, 0),
                                  colors: [
                                    Color.fromRGBO(50, 52, 59, 1),
                                    Color.fromRGBO(220, 220, 255, 0),
                                  ]),
                              boxShadow: const [
                                BoxShadow(
                                    offset: Offset(0, 10.41),
                                    blurRadius: 21.33,
                                    color: Color.fromRGBO(0, 0, 0, 0.4)),
                              ]),
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  
                                  fixedSize: Size(
                                      deviceWidth * 0.249, deviceWidth * 0.080)
                                      ),
                              onPressed: () {},
                              child: Text(
                                "Explore now",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: deviceWidth * 0.02,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              )),
                        )
                      ],
                    ),
                    const Spacer(),
                    SizedBox(
                      height: deviceWidth * 0.587,
                      width: deviceWidth * 0.46,
                      child: Image.asset(
                        "assets/images/first.png",
                        alignment: Alignment.center,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
              //  Text("$deviceWidth",style: TextStyle(color: Colors.white),),
              Text("Popular",
                style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: deviceWidth * 0.05, //20
                  color: const Color.fromRGBO(255,255,255,1)
                ),
              ),
              SizedBox(
                height: deviceHeight,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 2.8,
                    crossAxisSpacing: 4
                  ),
                 itemCount: 20,
                 itemBuilder: (context,index){
                  return GestureDetector(
                    child: Container(
                      width: deviceWidth * 0.445,//160
                    //  height: deviceHeight * 0.617,//222
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        gradient: const LinearGradient(colors: [
                          Color.fromRGBO(54,57,65,1),
                          Color.fromRGBO(62,66,75,0)
                        ])
                      ),

                    ),
                  );
                 },
                  ),
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:developer';

import 'package:camera_app/controller/item_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
    //log("$deviceHeight");

    ItemsData itemsDataObj = Provider.of<ItemsData>(context);

    log("${deviceHeight * 0.0006}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 33, 37, 1),
      body: Padding(
        padding: const EdgeInsets.only(top: 51, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
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
                                    deviceWidth * 0.249, deviceWidth * 0.080)),
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
                    height: deviceHeight * 0.587,
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
            const SizedBox(
              height: 10,
            ),
            //  Text("$deviceWidth",style: TextStyle(color: Colors.white),),
            Text(
              "Popular",
              style: GoogleFonts.dmSans(
                  fontWeight: FontWeight.w700,
                  fontSize: deviceWidth * 0.05, //20
                  color: const Color.fromRGBO(255, 255, 255, 1)),
            ),

            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 50,
                  crossAxisSpacing: 10,
                  childAspectRatio: deviceHeight * 0.0006, //0.7
                ),
                itemCount: itemsDataObj.itemList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      itemsDataObj.selectCam(itemsDataObj.itemList[index]);
                      Navigator.of(context).pushNamed("DetailsScreen");
                    },
                    child: Container(
                      //margin: EdgeInsets.only(bottom: 20),
                      padding:
                          const EdgeInsets.only(top: 14, left: 15, right: 15),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 60,
                                color: Color.fromRGBO(0, 0, 0, 0.25)),
                          ],
                          borderRadius: BorderRadius.circular(18),
                          gradient: const LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Color.fromRGBO(54, 57, 65, 1),
                                Color.fromRGBO(62, 66, 75, 0),
                              ])),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: const Color.fromRGBO(255, 197, 103, 1),
                                size: deviceWidth * 0.0429,
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              Text(
                                "${itemsDataObj.itemList[index].camRating}",
                                style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.w500,
                                    fontSize: deviceHeight * 0.016,
                                    color:
                                        const Color.fromRGBO(255, 255, 255, 1)),
                              ),
                            ],
                          ),
                          Container(
                            alignment: Alignment.center,
                            height: deviceHeight * 0.147,
                            //width: deviceWidth*0.147,
                            child: Image.asset(
                              itemsDataObj.itemList[index].camImg,
                              height: deviceHeight * 0.147,
                              // width: deviceWidth*0.147,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text(itemsDataObj.itemList[index].camName,
                              style: GoogleFonts.dmSans(
                                  // fontSize: deviceHeight,
                                  fontWeight: FontWeight.w500,
                                  color:
                                      const Color.fromRGBO(255, 255, 255, 1))),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("\$${itemsDataObj.itemList[index].camPrice}",
                                  style: GoogleFonts.dmSans(
                                      // fontSize: deviceHeight,
                                      fontWeight: FontWeight.w700,
                                      color: const Color.fromRGBO(
                                          255, 255, 255, 1))),
                              const Spacer(),
                              Container(
                                width: 23.57,
                                height: 21.75,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.04),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(111, 117, 128, 1),
                                      Color.fromRGBO(31, 34, 37, 0)
                                    ],
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                        offset: Offset(0, 10),
                                        blurRadius: 23,
                                        color: Color.fromRGBO(0, 0, 0, 0.25)),
                                  ],
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  size: deviceWidth * 0.02,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

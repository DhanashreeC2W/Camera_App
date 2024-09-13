import 'dart:developer';
import 'package:camera_app/controller/item_controller.dart';
import 'package:camera_app/view/widget/tap_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    /// DEVICE SCREEN HEIGHT AND WIDTH
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

    /// ITEMS DATA TO FETCH SELECTED CAMERA
    final ItemsData itemsData = Provider.of(context);
    final selectedCams = itemsData.selectedCam;

    log("${deviceHeight * 0.022}");

    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 20, 22, 1),
      body: SizedBox(
        height: deviceHeight,
        child: SingleChildScrollView(
          child: Column(
            children: [
              /// TOP SECTION OF SCREEN WITH CAMERA IMAGE
              Container(
                height: deviceHeight / 1.9,
                padding: const EdgeInsets.only(
                  top: 49,
                  left: 22,
                  right: 22,
                ),
                decoration: const BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [0.5, 0.9],
                    colors: [
                      Color.fromRGBO(159, 167, 189, 0.9),
                      Color.fromRGBO(19, 20, 22, 1),
                    ],
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// BACK BUTTON
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () => Navigator.of(context).pushNamed("HomeScreen"),
                          child: OnTapContainer(
                            gradient1OfContainer: const Color.fromRGBO(111, 117, 128, 1),
                            gradient2OfContainer: const Color.fromRGBO(31, 34, 37, 0),
                            containerHeight: deviceHeight * 0.037,
                            containerWidth: deviceWidth * 0.085,
                            iconSize: deviceWidth * 0.0234,
                            containerIcon: const Icon(Icons.arrow_back),
                          ),
                        ),
                      ],
                    ),

                    /// CAMERA IMAGE
                    Center(
                      child: Container(
                      height:deviceHeight* 0.09902,
                        margin: const EdgeInsets.only(top: 10, bottom: 40),
                        decoration: const BoxDecoration(boxShadow: [
                          BoxShadow(
                            offset: Offset(0, 20),
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 35,
                          ),
                        ]),
                        width: deviceWidth * 0.63,
                        child: Image.asset(
                          selectedCams!.camImg,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              /// BOTTOM SECTION WITH DETAILS
              Container(
                padding: const EdgeInsets.only(
                  top: 35,
                  left: 20,
                  right: 20,
                  bottom: 30,
                ),
                height: deviceHeight / 2,
                width: deviceWidth * 0.998,
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(32, 32, 36, 1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(18),
                    topRight: Radius.circular(18),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    /// CAMERA NAME
                    Text(
                      selectedCams.camName,
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: deviceHeight * 0.022,
                        color: const Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),

                    /// CAMERA PRICE AND QUANTITY
                    Row(
                      children: [
                        /// PRICE TEXT
                        Text(
                          "${selectedCams.camPrice}",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: deviceHeight * 0.037,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const Spacer(),

                        /// ADD QUANTITY BUTTON
                        GestureDetector(
                          onTap: () {
                            itemsData.countIncr();
                          },
                          child: OnTapContainer(
                            gradient1OfContainer: const Color.fromRGBO(97, 102, 113, 1),
                            gradient2OfContainer: const Color.fromRGBO(74, 78, 85, 0),
                            containerHeight: deviceHeight * 0.036,
                            containerWidth: deviceWidth * 0.08,
                            iconSize: deviceHeight * 0.0163,
                            containerIcon: const Icon(Icons.add_rounded),
                          ),
                        ),

                        const SizedBox(width: 10),

                        /// QUANTITY TEXT
                        Text(
                          itemsData.count.toString().padLeft(2, '0'),
                          style: GoogleFonts.dmSans(
                            fontSize: deviceHeight * 0.021,
                            fontWeight: FontWeight.w700,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),

                        const SizedBox(width: 10),

                        /// REMOVE QUANTITY BUTTON
                        GestureDetector(
                          onTap: () {
                            itemsData.countDecr();
                          },
                          child: OnTapContainer(
                            gradient1OfContainer: const Color.fromRGBO(97, 102, 113, 1),
                            gradient2OfContainer: const Color.fromRGBO(74, 78, 85, 0),
                            containerHeight: deviceHeight * 0.036,
                            containerWidth: deviceWidth * 0.08,
                            iconSize: deviceHeight * 0.0163,
                            containerIcon: const Icon(Icons.remove_rounded),
                          ),
                        ),
                      ],
                    ),

                    /// RATING AND REVIEWS
                    Row(
                      children: [
                        /// STAR ICON
                        Icon(
                          Icons.star_rounded,
                          color: const Color.fromRGBO(255, 197, 103, 1),
                          size: deviceHeight * 0.026,
                        ),
                        const SizedBox(width: 5),

                        /// RATING TEXT
                        Text(
                          "4.5",
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            fontSize: deviceHeight * 0.021,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                        const SizedBox(width: 12),

                        /// REVIEWS TEXT
                        Text(
                          "(500 reviews)",
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w500,
                            color: const Color.fromRGBO(103, 105, 113, 1),
                            fontSize: deviceHeight * 0.014,
                          ),
                        ),
                      ],
                    ),

                    /// CAMERA DESCRIPTION
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Facilisis tellus, est lacus arcu ut ac in fermentum. "
                      "Sit eget proin nunc felis quam rutrum metus. Et lacus, maecenas vel et arcu ut adipiscing morbi eget. At arcu "
                      "varius ullamcorper eu varius. Et lacus, maecenas vel et arcu ut adipiscing morbi eget.",
                      style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w300,
                        fontSize: deviceHeight * 0.016,
                        color: const Color.fromRGBO(255, 255, 255, 0.8),
                      ),
                    ),
                    const SizedBox(height: 25),

                    /// BUTTONS: BOOKMARK AND ADD TO BAG
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        /// BOOKMARK BUTTON
                        Container(
                          height: deviceHeight * 0.067,
                          width: deviceWidth * 0.17,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 59, 66, 1),
                                Color.fromRGBO(35, 37, 41, 0),
                              ],
                              stops: [0, 7],
                              begin: Alignment.topCenter,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 20),
                                blurRadius: 41,
                                spreadRadius: 0,
                                color: Color.fromRGBO(0, 0, 0, 0.4),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Image.asset("assets/images/bookmark.png"),
                          ),
                        ),

                        /// ADD TO BAG BUTTON
                        Container(
                          height: deviceHeight * 0.067,
                          width: deviceWidth * 0.6,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            border: const GradientBoxBorder(
                              gradient: LinearGradient(
                                colors: [
                                  Color.fromRGBO(250, 250, 250, 0.5),
                                  Color.fromRGBO(0, 0, 0, 0),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                              ),
                              width: 2,
                            ),
                            gradient: const LinearGradient(
                              colors: [
                                Color.fromRGBO(57, 59, 64, 1),
                                Color.fromRGBO(33, 35, 39, 0),
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            ),
                            boxShadow: const [
                              BoxShadow(
                                offset: Offset(0, 30),
                                blurRadius: 41,
                                spreadRadius: 0,
                                color: Color.fromRGBO(0, 0, 0, 0.5),
                              ),
                            ],
                          ),
                          child: Center(
                            child: Text(
                              "Add to bag",
                              style: GoogleFonts.dmSans(
                                fontWeight: FontWeight.w400,
                                fontSize: deviceHeight * 0.022,
                                color: const Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

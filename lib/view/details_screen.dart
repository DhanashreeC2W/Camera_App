import 'dart:developer';

import 'package:camera_app/controller/item_controller.dart';
import 'package:camera_app/view/widget/tap_container.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final deviceHeight = MediaQuery.sizeOf(context).height;
    final deviceWidth = MediaQuery.sizeOf(context).width;

    final ItemsData itemsData = Provider.of(context);
    final selectedCams = itemsData.selectedCam;

    log("${deviceHeight * 0.047}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 20, 22, 1),
      body: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
                gradient: RadialGradient(
                    center: Alignment.topRight,
                    radius: 0.8,
                    stops: [
                  0.0,
                  9
                ],
                    colors: [
                  Color.fromRGBO(159, 167, 189, 0.0),
                  Color.fromRGBO(19, 20, 22, 1),
                ])),
            child: Padding(
              padding: const EdgeInsets.only(
                top: 49,
                left: 22,
                right: 22,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                          onTap: () =>
                              Navigator.of(context).pushNamed("HomeScreen"),
                          child: OnTapContainer(
                              gradient1OfContainer:
                                  const Color.fromRGBO(111, 117, 128, 1),
                              gradient2OfContainer:
                                  const Color.fromRGBO(31, 34, 37, 0),
                              containerHeight: 0,
                              containerWidth: 0,
                              iconSize: deviceWidth * 0.0234,
                              containerIcon: const Icon(Icons.arrow_back))
                          //Container(
                          //   height: 33,
                          //   width: 35.75,
                          //   decoration: BoxDecoration(
                          //       borderRadius: BorderRadius.circular(7.64),
                          //       border: Border.all(
                          //           width: 0.95,
                          //           color: const Color.fromRGBO(55, 73, 87, 0.2)),
                          //       gradient: const LinearGradient(colors: [
                          //         Color.fromRGBO(111, 117, 128, 1),
                          //         Color.fromRGBO(31, 34, 37, 0),
                          //       ]),
                          //       boxShadow: const [
                          //         BoxShadow(
                          //             offset: Offset(0, 15.17),
                          //             blurRadius: 34.89,
                          //             color: Color.fromRGBO(0, 0, 0, 0.25))
                          //       ]),
                          //   child: Icon(
                          //     Icons.arrow_back,
                          //     color: const Color.fromRGBO(255, 255, 255, 1),
                          //     size: deviceWidth * 0.0234,
                          //   ),
                          // ),
                          ),
                      //Image.asset("assets/images/eclipse.png")
                    ],
                  ),
                  Center(
                    child: Container(
                      margin: const EdgeInsets.only(top: 10),
                      //padding: EdgeInsets.only(left: 22),
                      ///height:deviceHeight* 0.0902,
                      decoration: const BoxDecoration(boxShadow: [
                        BoxShadow(
                            offset: Offset(0, 20),
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                            blurRadius: 35)
                      ]),
                      width: deviceWidth * 0.63,
                      child: Image.asset(selectedCams!.camImg,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(
                  top: 35, left: 20, right: 20, bottom: 20),
              height: deviceHeight * 0.471,
              width: deviceWidth * 0.998,
              decoration: const BoxDecoration(
                  color: Color.fromRGBO(32, 32, 36, 1),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "himkjhhg",
                    style: GoogleFonts.dmSans(
                        fontWeight: FontWeight.w500,
                        fontSize: deviceHeight * 0.022,
                        color: const Color.fromRGBO(255, 255, 255, 1)),
                  ),
                  Row(
                    children: [
                      Text(
                        "\$price",
                        style: GoogleFonts.dmSans(
                            fontWeight: FontWeight.w700,
                            fontSize: deviceHeight * 0.037,
                            color: const Color.fromRGBO(255, 255, 255, 1)),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

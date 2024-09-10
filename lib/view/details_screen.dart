import 'dart:developer';

import 'package:flutter/material.dart';

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

    log("${deviceWidth * 0.0234}");
    return Scaffold(
      backgroundColor: const Color.fromRGBO(19, 20, 22, 1),
      body: Padding(
        padding: const EdgeInsets.only(
          top: 49,
          left: 22,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 33,
              width: 35.75,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7.64),
                  border: Border.all(
                      width: 0.95,
                      color: const Color.fromRGBO(55, 73, 87, 0.2)),
                  gradient: const LinearGradient(colors: [
                    Color.fromRGBO(111, 117, 128, 1),
                    Color.fromRGBO(31, 34, 37, 0),
                  ]),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 15.17),
                        blurRadius: 34.89,
                        color: Color.fromRGBO(0, 0, 0, 0.25))
                  ]),
              child: Icon(
                Icons.arrow_back,
                color: const Color.fromRGBO(255, 255, 255, 1),
                size: deviceWidth * 0.0234,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

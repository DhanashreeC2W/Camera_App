import 'package:camera_app/controller/item_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

/// HOMESCREEN
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    /// GETTING THE WIDTH AND HEIGHT OF THE DEVICE TO MAKE THE UI RESPONSIVE.
    final deviceWidth = MediaQuery.sizeOf(context).width;
    final deviceHeight = MediaQuery.sizeOf(context).height;

    /// FETCHING THE ITEMSDATA FROM PROVIDER, WHICH HOLDS THE ITEM LIST.
    ItemsData itemsDataObj = Provider.of<ItemsData>(context);

    return Scaffold(
      backgroundColor: const Color.fromRGBO(31, 33, 37, 1),
      body: Padding(
        padding: EdgeInsets.only(
          top: deviceHeight * 0.06,
          left: deviceWidth * 0.05, // 20
          right: deviceWidth * 0.05, // 20
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            /// HEADER SECTION WITH LOGO TEXT AND SHOPPING BAG ICON.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "PixelsCo.",
                  style: GoogleFonts.dmSans(
                    fontSize: deviceWidth * 0.054, // FONT SIZE 22
                    fontWeight: FontWeight.w600,
                    color: const Color.fromRGBO(255, 255, 255, 1),
                  ),
                ),
                Stack(
                  children: [
                    Image.asset(
                      "assets/images/bag.png",
                      height: deviceWidth * 0.06, // ICON HEIGHT 24
                      width: deviceWidth * 0.06, // ICON WIDTH 24
                    ),
                    Positioned(
                      top: deviceHeight * 0.004,
                      left: deviceWidth * 0.0,
                      child: Container(
                        padding: EdgeInsets.all(deviceWidth * 0.01),
                        width: deviceWidth * 0.035,
                        height: deviceWidth * 0.035,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromRGBO(86, 93, 107, 1),
                        ),
                        child: Text(
                          "1",

                          /// SHOPPING BAG ITEM COUNT
                          textAlign: TextAlign.center,
                          style: GoogleFonts.dmSans(
                            fontSize: deviceWidth * 0.017,
                            color: const Color.fromRGBO(255, 255, 255, 1),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),

            /// FEATURED BANNER SECTION WITH TITLE AND BUTTON
            Container(
              padding: EdgeInsets.only(
                top: deviceWidth * 0.09,
                left: deviceWidth * 0.05,
                bottom: deviceWidth * 0.05,
              ),
              margin: EdgeInsets.only(top: deviceHeight * 0.06),
              width: deviceWidth,
              height: deviceHeight * 0.22,
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
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      SizedBox(
                          width: 125,
                          child: Text(
                            "New Vintage Collection",
                            style: GoogleFonts.dmSans(
                                color: const Color.fromRGBO(255, 255, 255, 1),
                                fontWeight: FontWeight.w700,
                                fontSize: deviceHeight * 0.022),
                          )),
                      Container(
                        width: 100,
                        height: 32,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            gradient: const LinearGradient(colors: [
                              Color.fromRGBO(50, 52, 59, 1),
                              Color.fromRGBO(114, 117, 129, 0),
                            ]),
                            borderRadius: BorderRadius.circular(18)),
                        child: Text(
                          "Explore now",
                          style: GoogleFonts.dmSans(
                              color: const Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.w500,
                              fontSize: 10.41),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    color: Colors.transparent,
                    child: Image.asset("assets/images/first.png",
                        height: deviceHeight, width: 221, fit: BoxFit.cover),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: deviceHeight * 0.05,
            ),

            /// POPULAR SECTION HEADER
            Text(
              "Popular",
              style: GoogleFonts.dmSans(
                fontWeight: FontWeight.w700,
                fontSize: deviceWidth * 0.05, // FONT SIZE 20
                color: const Color.fromRGBO(255, 255, 255, 1),
              ),
            ),

            /// GRID OF POPULAR ITEMS
            Expanded(
              child: GridView.builder(
                scrollDirection: Axis.vertical,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: deviceHeight * 0.01,
                  crossAxisSpacing: deviceWidth * 0.03,
                  childAspectRatio: deviceWidth < 500
                      ? deviceHeight * 0.0008
                      : deviceHeight * 0.0015,
                ),
                itemCount: itemsDataObj.itemList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      /// SETTING SELECTED ITEM AND NAVIGATING TO DETAILS SCREEN
                      itemsDataObj.selectCam(itemsDataObj.itemList[index]);
                      Navigator.of(context).pushNamed("DetailsScreen");
                    },
                    child: Container(
                      height: deviceHeight * 0.264,
                      padding: EdgeInsets.symmetric(
                        vertical: deviceHeight * 0.02,
                        horizontal: deviceWidth * 0.04,
                      ),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            offset: Offset(0, 20),
                            blurRadius: 60,
                            color: Color.fromRGBO(0, 0, 0, 0.25),
                          ),
                        ],
                        borderRadius: BorderRadius.circular(18),
                        gradient: const LinearGradient(
                          begin: Alignment.topRight,
                          end: Alignment.bottomLeft,
                          colors: [
                            Color.fromRGBO(54, 57, 65, 1),
                            Color.fromRGBO(62, 66, 75, 0),
                          ],
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          /// RATING ROW WITH STAR ICON
                          Row(
                            children: [
                              Icon(
                                Icons.star_rounded,
                                color: const Color.fromRGBO(255, 197, 103, 1),
                                size: deviceWidth * 0.0429,
                              ),
                              SizedBox(
                                width: deviceWidth * 0.013,
                              ),
                              Text(
                                "${itemsDataObj.itemList[index].camRating}",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w500,
                                  fontSize: deviceHeight * 0.016,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                            ],
                          ),

                          // IMAGE OF THE POPULAR ITEM
                          Center(
                            child: Image.asset(
                              itemsDataObj.itemList[index].camImg,
                              height: deviceWidth < 500
                                  ? deviceHeight * 0.147
                                  : deviceHeight * 0.145,
                              width: deviceWidth < 500
                                  ? deviceWidth * 0.6
                                  : deviceWidth * 0.2,
                              fit: BoxFit.cover,
                            ),
                          ),

                          /// CAMERA NAME TEXT
                          Text(
                            itemsDataObj.itemList[index].camName,
                            style: GoogleFonts.dmSans(
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(255, 255, 255, 1),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              /// PRICE TEXT
                              Text(
                                "\$${itemsDataObj.itemList[index].camPrice}",
                                style: GoogleFonts.dmSans(
                                  fontWeight: FontWeight.w700,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                ),
                              ),
                              const Spacer(),

                              /// FORWARD ARROW BUTTON
                              Container(
                                width: deviceWidth * 0.06,
                                height: deviceWidth * 0.055,
                                decoration: BoxDecoration(
                                  borderRadius:
                                      BorderRadius.circular(deviceWidth * 0.01),
                                  gradient: const LinearGradient(
                                    colors: [
                                      Color.fromRGBO(111, 117, 128, 1),
                                      Color.fromRGBO(31, 34, 37, 0)
                                    ],
                                    begin: Alignment.topLeft,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      offset: Offset(0, 10),
                                      blurRadius: 23,
                                      color: Color.fromRGBO(0, 0, 0, 0.25),
                                    ),
                                  ],
                                ),
                                child: Icon(
                                  Icons.arrow_forward,
                                  color: const Color.fromRGBO(255, 255, 255, 1),
                                  size: deviceWidth * 0.02,
                                ),
                              ),
                            ],
                          ),
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

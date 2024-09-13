import 'package:camera_app/controller/item_controller.dart';  
import 'package:camera_app/view/details_screen.dart'; 
import 'package:flutter/material.dart';  
import 'package:provider/provider.dart';  // IMPORTING PROVIDER PACKAGE FOR STATE MANAGEMENT

import 'view/home_screen.dart';  

/// MAIN FUNCTION SERVES AS THE ENTRY POINT OF THE APP.
void main() {
  runApp(const MainApp());
}

/// MAINAPP CLASS DEFINES THE ROOT WIDGET OF THE APPLICATION.
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      /// PROVIDING THE ITEMSDATA TO ALL CHILD WIDGETS THAT NEED IT
      create: (context) => ItemsData(),
      child: MaterialApp(
        /// DEFINING ROUTES FOR NAVIGATION IN THE APP
        routes: {
          "HomeScreen": (context) {
            return const HomeScreen();  /// ROUTE FOR HOMESCREEN
          },
          "DetailsScreen": (context) {
            return const DetailsScreen();  /// ROUTE FOR DETAILSSCREEN
          }
        },
        /// DISABLING DEBUG BANNER IN APP
        debugShowCheckedModeBanner: false,
        /// SETTING HOMESCREEN AS THE DEFAULT SCREEN OF THE APP
        home: const HomeScreen(),
      ),
    );
  }
}
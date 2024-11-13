import 'package:camera_app/controller/item_controller.dart';
import 'package:camera_app/view/details_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'view/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      /// PROVIDING THE ITEMSDATA TO ALL CHILD WIDGETS THAT NEEDED IT
      create: (context) => ItemsData(),

      child: MaterialApp(
        routes: {
          "HomeScreen": (context) {
            /// ROUTE FOR HOMESCREEN
            return const HomeScreen();
          },
          /// ROUTE FOR DETAILSSCREEN
          "DetailsScreen": (context) {
            return const DetailsScreen();
          }
        },
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}

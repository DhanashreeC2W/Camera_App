import 'package:flutter/material.dart';
import '../model/items_model.dart';

/// A CHANGENOTIFIER CLASS TO MANAGE ITEMS DATA AND STATE
class ItemsData extends ChangeNotifier {
  
  /// LIST OF CAMERA ITEMS THAT CAN BE DISPLAYED
  List<ItemsModel> itemList = [
    ItemsModel(
      camImg: "assets/images/img1.png",
      camName: "Canon EOS 30D",
      camPrice: 16000,
      camRating: 4.5,
    ),
    ItemsModel(
      camImg: "assets/images/img2.png",
      camName: "SONY 200mm Zoom",
      camPrice: 6000,
      camRating: 4.5,
    ),
    ItemsModel(
      camImg: "assets/images/img1.png",
      camName: "Canon EOS 30D",
      camPrice: 16000,
      camRating: 4.5,
    ),
    ItemsModel(
      camImg: "assets/images/img2.png",
      camName: "SONY 200mm Zoom",
      camPrice: 6000,
      camRating: 4.5,
    ),
    ItemsModel(
      camImg: "assets/images/img1.png",
      camName: "Canon EOS 30D",
      camPrice: 16000,
      camRating: 4.5,
    ),
    ItemsModel(
      camImg: "assets/images/img2.png",
      camName: "SONY 200mm Zoom",
      camPrice: 6000,
      camRating: 4.5,
    ),
  ];

  /// THE CURRENTLY SELECTED CAMERA ITEM
  ItemsModel? _selectedCam;

  /// GETTER FOR THE SELECTED CAMERA
  ItemsModel? get selectedCam => _selectedCam;

  /// METHOD TO SELECT A CAMERA ITEM 
  void selectCam(ItemsModel item) {
    _selectedCam = item;
    notifyListeners(); 
  }

  /// VARIABLE TO KEEP TRACK OF THE ITEM COUNT 
  int count = 1;

  /// METHOD TO INCREMENT THE ITEM COUNT
  void countIncr() {
    count++;
    notifyListeners();  
  }

  /// METHOD TO DECREMENT THE ITEM COUNT
  void countDecr() {
    if (count > 1) {  /// COUNT WILL STAYS ABOVE 0
      count--;
      notifyListeners();
    }
  }
}

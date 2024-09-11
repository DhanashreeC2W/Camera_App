import 'package:flutter/material.dart';

import '../model/items_model.dart';

class ItemsData extends ChangeNotifier{
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

ItemsModel? _selectedCam;

ItemsModel? get selectedCam => _selectedCam;

void selectCam(ItemsModel item){
  _selectedCam = item;
  notifyListeners();
}

}
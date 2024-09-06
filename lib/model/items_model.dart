//MODEL CLASS FOR HOME SCREEN



import 'dart:ffi';

class ItemsModel {
  String camImg;
  String camName;
  Float camRating;
  int camPrice;

  ItemsModel(
      {required this.camImg,
      required this.camName,
      required this.camPrice,
      required this.camRating});
}

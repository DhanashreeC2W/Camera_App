import 'package:flutter/material.dart';
import '../model/items_model.dart';

/// A ChangeNotifier class to manage items data and state
class ItemsData extends ChangeNotifier {
  
  /// List of camera items that can be displayed
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

  /// The currently selected camera item, can be null if none is selected
  ItemsModel? _selectedCam;

  /// Getter for the selected camera
  ItemsModel? get selectedCam => _selectedCam;

  /// Method to select a camera item and notify listeners about the change
  void selectCam(ItemsModel item) {
    _selectedCam = item;
    notifyListeners();  /// Triggers UI updates wherever this data is consumed
  }

  /// Variable to keep track of the item count for cart or purchase operations
  int count = 1;

  /// Method to increment the item count
  void countIncr() {
    count++;
    notifyListeners();  /// Notify UI to update the displayed count
  }

  /// Method to decrement the item count, ensuring it doesn't go below 1
  void countDecr() {
    if (count > 1) {  /// Ensure count stays above 0
      count--;
      notifyListeners();
    }
  }
}

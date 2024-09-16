/// MODEL CLASS REPRESENTING A CAMERA ITEM
class ItemsModel {
  ///  IMAGE OF THE CAMERA
  final String camImg;

  /// NAME OF THE CAMERA
  final String camName;

  /// RATING OF THE CAMERA
  final double camRating;

  /// PRICE OF THE CAMERA 
  final int camPrice;

  /// CONSTRUCTOR TO CREATE AN INSTANCE OF `ITEMSMODEL`
  ItemsModel({
    required this.camImg,
    required this.camName,
    required this.camPrice,
    required this.camRating,
  });
}

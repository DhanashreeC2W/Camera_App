/// Model class representing a camera item
class ItemsModel {
  /// Path to the image asset representing the camera
  final String camImg;

  /// Name of the camera
  final String camName;

  /// Rating of the camera, typically between 0.0 and 5.0
  final double camRating;

  /// Price of the camera in the respective currency
  final int camPrice;

  /// Constructor to create an instance of `ItemsModel`
  ItemsModel({
    required this.camImg,
    required this.camName,
    required this.camPrice,
    required this.camRating,
  });
}

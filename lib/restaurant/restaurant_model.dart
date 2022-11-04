import 'package:delivery_app/food/food_model.dart';


class RestaurantModel {

  String? restId;
  String? restName;
  String? restImg;
  String? address;
  String? deliveryTime;
  num? distance;
  List<FoodModel>? restFood;
  bool? isFav;

  RestaurantModel({required this.restId, required this.restName, required this.restImg, required this.address, required this.deliveryTime, required this.distance, required this.restFood, required this.isFav});
}
import 'package:delivery_app/restaurant/restaurant_model.dart';


class CategoryModel {

  String? categoryName;
  String? categoryImg;
  List<RestaurantModel>? categoryRest;

  CategoryModel({required this.categoryName, required this.categoryImg, required this.categoryRest});
}
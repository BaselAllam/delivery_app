

import 'package:delivery_app/restaurant/restaurant_model.dart';

abstract class RestaurantsStates {}

class RestInitialState extends RestaurantsStates {}

class GetRestLoading extends RestaurantsStates {}

class GetRestLoadingFinish extends RestaurantsStates {

  List<RestaurantModel> allRestaurant;

  GetRestLoadingFinish(this.allRestaurant);
}

class GetRestLoadingError extends RestaurantsStates {}
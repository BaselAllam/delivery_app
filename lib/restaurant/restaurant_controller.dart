
// find restauratn depends on location
// getRestaurant
// addToFav
// removeFromFav


import 'package:bloc/bloc.dart';
import 'package:delivery_app/restaurant/restaurant_model.dart';
import 'package:delivery_app/restaurant/restaurant_states.dart';
import 'package:geolocator/geolocator.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

final String domainName = 'https://banana-362519-default-rtdb.firebaseio.com/';


class RestaurantCubit extends Cubit<RestaurantsStates> {

  RestaurantCubit() : super(RestInitialState());

  Future<void> getRestaurant() async {

    List<RestaurantModel> allRestaurant = [];

    emit(GetRestLoading());

    try {
      http.Response res = await http.get(Uri.parse('$domainName/restaurant.json'));
      Map data = json.decode(res.body);
      data.forEach((key, value) {
        allRestaurant.add(RestaurantModel(
          restId: key,
          restName: value['restName'],
          restImg: value['restImg'],
          address: value['address'],
          deliveryTime: value['deliveryTime'],
          distance: 0.0,
          restFood: [],
          isFav: false
        ));
      });
      emit(GetRestLoadingFinish(allRestaurant));
    } catch (e) {
      emit(GetRestLoadingError());
    }
    
    
  }


  findNearestRestaurant(double lat, double long) {

    List<RestaurantModel?> nearestRest = [];

    // distance calculation
  }
}
import 'package:aliotte_task/response/drink_response.dart';
import 'package:dio/dio.dart';
import 'package:get/get.dart';

import '../network/rest_api.dart';

class DrinkController extends GetxController {
  ApiClient mClient = ApiClient(Dio());
  var drinkResponse = DrinkResponse().obs;
  var isLoading = true.obs;
  var foundedDrinks = [].obs;

  @override
  void onInit() {
    getDrinkData();
    super.onInit();
  }

  Future<void> getDrinkData() async {
    final response = await mClient.searchDrinks("rum");
    if (response != null) {
      drinkResponse.value = response;
      isLoading.value = false;
    } else {
      response.printError();
    }
  }

  filterDrink(String enterKeyword) {
    List<Drinks>? alldrinks = drinkResponse.value.drinks;
    List<Drinks>? sortedDrinks = alldrinks
        ?.where((element) => element.strDrink!.contains(enterKeyword))
        .toList();
    if (sortedDrinks != null) {
      foundedDrinks.value = sortedDrinks;
    }
  }
}

import 'package:aliotte_task/Screens/drinkDiscription/drink_discription.dart';
import 'package:aliotte_task/controller/drink_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrinkScreen extends StatelessWidget {
  DrinkScreen({Key? key}) : super(key: key);
  DrinkController drinkController = Get.put(DrinkController());
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Obx(
          () => Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                TextField(
                  controller: searchController,
                  decoration: const InputDecoration(hintText: "Search"),
                  onChanged: (val) {
                    drinkController.filterDrink(val);
                  },
                ),
                Expanded(
                  child: drinkController.isLoading.value
                      ? const Center(child: CircularProgressIndicator())
                      : ListView.builder(
                          itemCount:
                              drinkController.foundedDrinks.value.isNotEmpty
                                  ? drinkController.foundedDrinks.value.length
                                  : drinkController
                                      .drinkResponse.value!.drinks?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              onTap: () {
                                Get.to(() => DrinkDescription());
                              },
                              title:
                                  drinkController.foundedDrinks.value.isNotEmpty
                                      ? Text(drinkController
                                          .foundedDrinks[index].strDrink!)
                                      : Text(drinkController.drinkResponse.value
                                          .drinks![index].strDrink
                                          .toString()),
                              subtitle: Text(drinkController.drinkResponse.value
                                  .drinks![index].strAlcoholic
                                  .toString()),
                            );
                          }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

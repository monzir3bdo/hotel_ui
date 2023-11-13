import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelsgo_task/core/colors_manager.dart';
import 'package:hotelsgo_task/widgets/country_picker_widget.dart';
import 'package:hotelsgo_task/controller/reservation_controller.dart';
import 'package:hotelsgo_task/widgets/city_widget.dart';
import 'package:hotelsgo_task/widgets/date_picker_widget.dart';
import 'package:hotelsgo_task/widgets/people_with_you_widget.dart';

import '../controller/room_controller.dart';
import '../core/strings_manager.dart';
import '../screens/second_screen.dart';

class HotelSearchWidget extends StatelessWidget {
  const HotelSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(ReservationController());
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xFF379DE5),
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(15),
            child: const Column(
              children: [
                CityWidget(),
                SizedBox(
                  height: 10,
                ),
                DatePickerWidget(),
                SizedBox(
                  height: 10,
                ),
                CountryPickerWidget(),
                SizedBox(
                  height: 10,
                ),
                PeopleWithYouWidget(),
              ],
            ),
          ),
          const FindHotelsButtonWidget()
        ],
      ),
    );
  }
}

class FindHotelsButtonWidget extends StatelessWidget {
  const FindHotelsButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.put(RoomController());
        Get.bottomSheet(
          const SecondScreen(),
          isScrollControlled: true,
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
          color: ColorsManager.orange,
          border: const Border(
            top: BorderSide.none,
          ),
          borderRadius: BorderRadius.circular(
            10,
          ),
        ),
        width: double.infinity,
        height: 50,
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppStrings.findHotels,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
            Icon(
              Icons.search,
              color: Colors.white,
              size: 50,
            )
          ],
        ),
      ),
    );
  }
}

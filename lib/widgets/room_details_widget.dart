import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/room_controller.dart';
import '../core/strings_manager.dart';
import 'age_widget.dart';
import 'increase_or_decrease_room_widget.dart';

class RoomDetailWidget extends StatelessWidget {
  const RoomDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RoomController>();
    return Container(
      height: 280,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, right: 12, left: 12),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  AppStrings.room1,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(AppStrings.adults),
                GetBuilder(
                  init: controller,
                  builder: (_) => IncreaseOrDecreaseRoomsWidget(
                    incrementCondition: controller.numberOfAdults.value == 4,
                    decrementCondition: controller.numberOfAdults.value == 1,
                    counterIncreased: () {
                      controller.increaseNumberOfAdults();
                    },
                    counterDecreased: () {
                      controller.decreaseNumberOfAdults();
                    },
                    number: controller.numberOfAdults.value,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(AppStrings.children),
                GetBuilder(
                  init: controller,
                  builder: (_) => IncreaseOrDecreaseRoomsWidget(
                    incrementCondition: controller.numberOfChildren.value == 10,
                    decrementCondition: controller.numberOfChildren.value == 0,
                    number: controller.numberOfChildren.value,
                    counterIncreased: () {
                      controller.increaseNumberOfChildren();
                    },
                    counterDecreased: () {
                      controller.decreaseNumberOfChildren();
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(AppStrings.childOneAge),
                  GetBuilder(
                    init: controller,
                    builder: (_) => AgeWidget(
                      ageRx: controller.child1Age,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(AppStrings.childTwoAge),
                  GetBuilder(
                    init: controller,
                    builder: (_) => AgeWidget(
                      ageRx: controller.child2Age,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

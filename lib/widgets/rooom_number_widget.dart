import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/room_controller.dart';
import '../core/strings_manager.dart';
import 'increase_or_decrease_room_widget.dart';

class NumberOfRoomsWidget extends StatelessWidget {
  const NumberOfRoomsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    RoomController controller = Get.find<RoomController>();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Text(AppStrings.rooms),
          GetBuilder(
              init: controller,
              builder: (_) => IncreaseOrDecreaseRoomsWidget(
                    incrementCondition: controller.numberOfRooms.value == 10,
                    decrementCondition: controller.numberOfRooms.value == 1,
                    number: controller.numberOfRooms.value,
                    counterIncreased: () {
                      controller.increaseNumberOfRooms();
                    },
                    counterDecreased: () {
                      controller.decreaseNumberOfRooms();
                    },
                  )),
        ],
      ),
    );
  }
}

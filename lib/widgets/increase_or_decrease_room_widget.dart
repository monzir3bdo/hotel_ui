import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/room_controller.dart';
import 'custom_button.dart';

// ignore: must_be_immutable
class IncreaseOrDecreaseRoomsWidget extends StatelessWidget {
  void Function()? counterIncreased;
  void Function()? counterDecreased;
  bool incrementCondition;
  bool decrementCondition;
  int number;
  IncreaseOrDecreaseRoomsWidget(
      {super.key,
      required this.counterIncreased,
      required this.counterDecreased,
      required this.number,
      required this.incrementCondition,
      required this.decrementCondition});

  @override
  Widget build(BuildContext context) {
    final RoomController controller = Get.find<RoomController>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        AbsorbPointer(
          absorbing: decrementCondition ? true : false,
          child: Opacity(
            opacity: decrementCondition ? 0.4 : 1,
            child: CustomButton(
              onTap: counterDecreased,
              icon: Icons.remove,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        GetBuilder(
          init: controller,
          builder: (_) => Text(
            '$number',
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        AbsorbPointer(
          absorbing: incrementCondition ? true : false,
          child: Opacity(
            opacity: incrementCondition ? 0.4 : 1,
            child: CustomButton(
              onTap: counterIncreased,
              icon: Icons.add,
            ),
          ),
        ),
      ],
    );
  }
}

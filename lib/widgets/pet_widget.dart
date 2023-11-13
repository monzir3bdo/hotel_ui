import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controller/room_controller.dart';
import '../core/strings_manager.dart';

class PetWidget extends StatelessWidget {
  const PetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<RoomController>();
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    AppStrings.petFriendly,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    CupertinoIcons.info,
                    size: 20,
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                AppStrings.petBelowText,
                style: TextStyle(color: Colors.blueGrey),
              ),
            ],
          ),
          GetBuilder(
            init: controller,
            builder: (_) => CupertinoSwitch(
                value: controller.isPet.value,
                onChanged: (value) {
                  controller.toggle();
                }),
          ),
        ],
      ),
    );
  }
}

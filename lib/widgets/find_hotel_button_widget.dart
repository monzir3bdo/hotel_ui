import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screens/second_screen.dart';

import '../controller/room_controller.dart';
import '../core/colors_manager.dart';
import '../core/strings_manager.dart';

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

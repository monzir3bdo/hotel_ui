import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/colors_manager.dart';

import '../controller/reservation_controller.dart';

class DatePickerWidget extends StatelessWidget {
  const DatePickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder(builder: (ReservationController controller) {
      return Container(
        width: double.infinity,
        height: 70,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white, // Color of the outer container
        ),
        child: GestureDetector(
          onTap: () {
            controller.showDateReservationPicker(context);
          },
          child: Container(
            margin: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: const Color(0xFF196CBA),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  width: 50,
                ),
                Text(
                  '${controller.selectedDate.value.start.year}-${controller.selectedDate.value.start.month}-${controller.selectedDate.value.start.day}',
                  style: TextStyle(
                    color: ColorsManager.darkBlue2,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  ' ==> ',
                  style: TextStyle(
                    color: ColorsManager.darkBlue2,
                    fontSize: 20,
                  ),
                ),
                Text(
                  '${controller.selectedDate.value.end.year}-${controller.selectedDate.value.end.month}-${controller.selectedDate.value.end.day}',
                  style: TextStyle(
                    color: ColorsManager.darkBlue,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  width: 30,
                ),
                Expanded(
                  child: IconButton(
                    onPressed: () {
                      controller.showDateReservationPicker(context);
                    },
                    icon: Icon(
                      CupertinoIcons.multiply,
                      color: ColorsManager.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}

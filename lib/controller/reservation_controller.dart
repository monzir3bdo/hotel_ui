import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ReservationController extends GetxController {
  var selectedDate = DateTimeRange(
          start: DateTime.now(),
          end: DateTime.now().add(const Duration(days: 1)))
      .obs;
  newReservation(DateTimeRange? dataTimeRange) {
    selectedDate.value = dataTimeRange!;
    update();
  }

  void showDateReservationPicker(BuildContext context) async {
    final controller = Get.put(ReservationController());
    DateTimeRange? dateTimeRange = await showDateRangePicker(
        context: context, firstDate: DateTime.now(), lastDate: DateTime(2025));
    if (dateTimeRange != null) {
      controller.newReservation(dateTimeRange);
    }
  }
}

// ignore_for_file: must_be_immutable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hotelsgo_task/core/colors_manager.dart';
import 'package:hotelsgo_task/core/strings_manager.dart';

class AgeWidget extends StatelessWidget {
  late RxInt ageRx;
  AgeWidget({super.key, required this.ageRx});

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
        child: Obx(
          () => Text(
            '${ageRx.value} ${AppStrings.years}',
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),
        ),
        onPressed: () {
          showCupertinoModalPopup(
              context: context,
              builder: (_) => SizedBox(
                    width: double.infinity,
                    height: 350,
                    child: CupertinoPicker(
                      backgroundColor: ColorsManager.white,
                      scrollController: FixedExtentScrollController(
                        initialItem: ageRx.value,
                      ),
                      itemExtent: 30,
                      onSelectedItemChanged: (value) {
                        ageRx.value = value;
                      },
                      children: _ageRange(),
                    ),
                  ));
        });
  }
}

List<Text> _ageRange() {
  List<Text> ageSet = [];
  for (int i = 0; i < 18; i++) {
    ageSet.insert(i, Text(i.toString()));
  }
  return ageSet;
}

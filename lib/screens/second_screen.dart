import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/strings_manager.dart';
import '../widgets/pet_widget.dart';
import '../widgets/room_details_widget.dart';
import '../widgets/rooom_number_widget.dart';

import '../controller/room_controller.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        color: Color(0xFFEBECED),
      ),
      height: MediaQuery.of(context).size.height * 0.94,
      width: double.infinity,
      child: Column(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
            height: 60,
            child: Row(
              children: [
                const SizedBox(
                  width: 140,
                ),
                const Center(
                  child: Text(
                    AppStrings.roomsAndGuests,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 85,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: IconButton(
                    onPressed: () => Get.back(),
                    icon: const Icon(CupertinoIcons.multiply),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              children: [
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const NumberOfRoomsWidget(),
                ),
                const SizedBox(
                  height: 20,
                ),
                const RoomDetailWidget(),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 80,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const PetWidget(),
                ),
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.15,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF007BC1),
                      fixedSize: const Size(700, 50)),
                  onPressed: () {
                    Get.back();
                    Get.delete<RoomController>();
                  },
                  child: const Text(AppStrings.apply),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

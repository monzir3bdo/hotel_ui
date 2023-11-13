import 'package:get/get.dart';

class RoomController extends GetxController {
  var numberOfRooms = 1.obs;
  var numberOfAdults = 4.obs;
  var numberOfChildren = 2.obs;
  var child1Age = 14.obs;
  var child2Age = 14.obs;
  var isPet = false.obs;
  void increaseNumberOfRooms() {
    if (numberOfRooms.value < 10) {
      numberOfRooms.value++;
    } else {
      numberOfRooms.value = 10;
    }
    update();
  }

  void decreaseNumberOfRooms() {
    if (numberOfRooms > 1) {
      numberOfRooms.value--;
    } else {
      numberOfRooms.value = 1;
    }

    update();
  }

  void increaseNumberOfAdults() {
    if (numberOfAdults.value < 4) {
      numberOfAdults.value++;
    } else {
      numberOfAdults.value = 4;
    }

    update();
  }

  void decreaseNumberOfAdults() {
    if (numberOfAdults.value > 1) {
      numberOfAdults.value--;
    } else {
      numberOfAdults.value = 1;
    }

    update();
  }

  void increaseNumberOfChildren() {
    if (numberOfChildren.value < 10) {
      numberOfChildren.value++;
    } else {
      numberOfChildren.value = 10;
    }
    update();
  }

  void decreaseNumberOfChildren() {
    if (numberOfChildren.value > 0) {
      numberOfChildren.value--;
    } else {
      numberOfChildren.value = 0;
    }

    update();
  }

  void toggle() {
    isPet.value = !isPet.value;
    update();
  }

  void changeChild1Age(int age) {
    child1Age.value = age;
  }

  void changeChild2Age(int age) {
    child1Age.value = age;
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  void Function()? onTap;
  final IconData icon;
  CustomButton({super.key, required this.icon, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 50,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          border: Border.all(
            color: Colors.lightBlueAccent,
            width: 2,
          ),
          color: Colors.white,
        ),
        child: Icon(
          icon,
          color: Colors.blueAccent,
        ),
      ),
    );
  }
}

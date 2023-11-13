import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  const CityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      width: double.infinity,
      height: 60,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            style: const TextStyle(fontSize: 18, color: Color(0xFF2273BD)),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintText: 'Select City',
              hintStyle:
                  const TextStyle(fontSize: 18, color: Color(0xFF2273BD)),
              contentPadding: const EdgeInsets.all(16),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.lightBlueAccent,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: const BorderSide(
                  color: Colors.lightBlueAccent,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

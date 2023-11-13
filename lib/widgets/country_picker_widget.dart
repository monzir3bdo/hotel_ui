import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/strings_manager.dart';

import '../core/country_list.dart';

class CountryPickerWidget extends StatelessWidget {
  const CountryPickerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      style: const TextStyle(color: Color(0xFF3A82C4), fontSize: 18),
      icon: const Icon(
        CupertinoIcons.chevron_down,
        size: 20,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        hintText: AppStrings.nationality,
        hintStyle: const TextStyle(
          color: Color(0xFF3A82C4),
          fontSize: 17,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      items: countryList.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Text(value),
          ),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }
}

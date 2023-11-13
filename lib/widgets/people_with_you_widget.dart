import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../core/colors_manager.dart';
import '../core/strings_manager.dart';

class PeopleWithYouWidget extends StatelessWidget {
  const PeopleWithYouWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      icon: const Icon(
        CupertinoIcons.chevron_down,
        size: 20,
      ),
      style: TextStyle(
        color: ColorsManager.darkBlue2,
        fontSize: 15,
      ),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      value: 'two',
      items: const [
        DropdownMenuItem(
          value: 'one',
          child: Text(AppStrings.adultOneRoom),
        ),
        DropdownMenuItem(
          value: 'two',
          child: Text(
            AppStrings.twoAdultsOneRoom,
            style: TextStyle(
              color: Colors.lightBlueAccent,
            ),
          ),
        ),
        DropdownMenuItem(
          value: 'three',
          child: Text(AppStrings.moreOptions),
        ),
      ],
      onChanged: (String? value) {},
    );
  }
}

import 'package:flutter/material.dart';
import 'package:hotelsgo_task/widgets/hotel_search_container.dart';

import '../widgets/hotel_search_widget.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(context),
    );
  }
}

Widget _buildBody(context) {
  return Container(
    decoration: const BoxDecoration(
      image: DecorationImage(
        image: AssetImage(
          'assets/images/attachment3.webp',
        ),
        fit: BoxFit.fill,
      ),
    ),
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: HotelSearchContainer(),
          ),
          SizedBox(
            height: 5,
          ),
          HotelSearchWidget(),
          SizedBox(
            height: 20,
          )
        ],
      ),
    ),
  );
}

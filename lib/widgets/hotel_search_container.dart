import 'package:flutter/material.dart';
import 'package:hotelsgo_task/core/colors_manager.dart';

import '../core/strings_manager.dart';

class HotelSearchContainer extends StatelessWidget {
  const HotelSearchContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.0,
      height: 60.0,
      color: const Color(0xFF186CBB),
      child: CustomPaint(
        painter: CombinedShapePainter(),
        child: const Center(
          child: Text(
            AppStrings.hotelSearch,
            style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}

class CombinedShapePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;

    Rect rect = Rect.fromPoints(const Offset(0, 0), const Offset(150, 60));
    canvas.drawRect(rect, paint);

    Path path = Path()
      ..moveTo(150, 0)
      ..lineTo(150, 60)
      ..lineTo(210, 60)
      ..close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

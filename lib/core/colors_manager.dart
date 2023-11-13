import 'dart:ui';

abstract class ColorsManager {
  static Color orange = HexColor.fromHex('#EC8B24');
  static Color darkBlue = HexColor.fromHex('#007BC1');
  static Color darkBlue2 = HexColor.fromHex('#3A82C4');
  static Color white = HexColor.fromHex('#FFFFFF');
  static Color lightBlue = HexColor.fromHex('#4FB5FD');
  static Color grey = HexColor.fromHex('#C7C9D1');
}

extension HexColor on Color {
  static Color fromHex(String hexColor) {
    hexColor = hexColor.replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF$hexColor';
    }
    return Color(int.parse(hexColor, radix: 16));
  }
}

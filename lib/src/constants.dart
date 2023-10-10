import 'package:flutter/material.dart';

const kDefaultFontFamily = 'Roboto';
const kSecondaryFontFamily = 'RobotoSlab';

const MaterialColor kPrimaryColor = MaterialColor(
  0xFFF97A24,
  <int, Color>{
    200: Color(0xFFFFDFB7),
    300: Color(0xFFF5A667),
    600: Color(0xFFD33214),
    700: Color(0xFF9F162A),
  },
);
const MaterialColor kSecondaryColor = MaterialColor(
  0xFFDE0E72,
  <int, Color>{
    300: Color(0xFFE33F7F),
  },
);
const MaterialColor kUnselectedColor = MaterialColor(
  0xFFC9BDBC,
  <int, Color>{
    50: Color(0xFFFBF9F7),
    100: Color(0xFFEEE8E4),
    800: Color(0xFF595653),
  },
);
const kTertiaryColor = Color(0xFF21A9CB);
const kBackgroundColor = Color(0xFFF5F4F4);
const kSuccessColor = Color(0xFF1B5E20);
const kWarningColor = Color(0xFFFBC02D);
const kErrorColor = Color(0xFFD33214);
const kInfoColor = Color(0xFF64B5F6);
const kWhiteColor = Color(0xFFFBF9F7);
const kBlackColor = Color(0xFF240106);

const TextStyle kCardTopTextStyle = TextStyle(
  color: kUnselectedColor,
  fontSize: 12.0,
);

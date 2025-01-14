import 'package:flutter/material.dart';

abstract class AppColors {
  /// Primary
  static const primaryColor500 = Color(0xFF22BB9C);
  static const primaryColor400 = Color(0xFF4EC9B0);
  static const primaryColor300 = Color(0xFF7AD6C4);
  static const primaryColor200 = Color(0xFFA7E4D7);
  static const primaryColor100 = Color(0xFFA7E4D7);
  static const primaryColor = Color(0xFF9fcfb3);
  static const secondaryColor = Color(0xFF2A2D3E);

  /// Secondary
  static const secondaryColor500 = Color(0xFFFFD300);
  static const secondaryColor400 = Color(0xFFFFDC33);
  static const secondaryColor300 = Color(0xFFFFE566);
  static const secondaryColor200 = Color(0xFFFFED99);
  static const secondaryColor100 = Color(0xFFFFFBE6);

  /// Alerts & Status
  static const successColor = Color(0xFFFFFBE6);
  static const warningColor = Color(0xFFFACC15);
  static const errorColor = Color(0xFFF75555);
  static const infoColor = Color(0xFF246BFD);
  static const disabledColor = Color(0xFFD8D8D8);
  static const buttonDisabledColor = Color(0xFF1EA68A);
  static Color activeFormColor = const Color(0xFF22BB9C).withOpacity(.08);

  /// Greyscale
  static const greyScaleColor900 = Color(0xFF212121);
  static const greyScaleColor800 = Color(0xFF424242);
  static const greyScaleColor700 = Color(0xFF616161);
  static const greyScaleColor600 = Color(0xFF757575);
  static const greyScaleColor500 = Color(0xFF9E9E9E);
  static const greyScaleColor400 = Color(0xFFBDBDBD);
  static const greyScaleColor300 = Color(0xFFE0E0E0);
  static const greyScaleColor200 = Color(0xFFEEEEEE);
  static const greyScaleColor100 = Color(0xFFF5F5F5);
  static const greyScaleColor50 = Color(0xFFFAFAFA);

  /// Gradient Colors
  static const gradientGreenColor = LinearGradient(
    colors: [
      Color(0xFF35DEBC),
      AppColors.primaryColor500,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const gradientBlueColor = LinearGradient(
    colors: [
      AppColors.infoColor,
      Color(0xFF35DEBC),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const gradientOrangeColor = LinearGradient(
    colors: [
      Color(0xFFFB9400),
      Color(0xFFFFAB38),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const gradientYellowColor = LinearGradient(
    colors: [
      AppColors.warningColor,
      Color(0xFFFFE580),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static const gradientRedColor = LinearGradient(
    colors: [
      Color(0xFFFF4D67),
      Color(0xFFFF8A9B),
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
  static final gradientBlackColor = LinearGradient(
    colors: [
      const Color(0xFF2C2C2C).withOpacity(.0),
      const Color(0xFF3A3A3A),
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
  );

  /// Others
  static const whiteColor = Color(0xFFFFFFFF);
  static const blackColor = Color(0xFF000000);
  static const redColor = Color(0xFFF54336);
  static const pinkColor = Color(0xFFEA1E61);
  static const purpleColor = Color(0xFF9D28AC);
  static const deepPurpleColor = Color(0xFF673AB3);
  static const indigoColor = Color(0xFF3F51B2);
  static const blueColor = Color(0xFF1A96F0);
  static const lightBlueColor = Color(0xFF00A9F1);
  static const cyanColor = Color(0xFF00BCD3);
  static const tealColor = Color(0xFF009689);
  static const greenColor = Color(0xFF4AAF57);
  static const lightGreenColor = Color(0xFF8BC255);
  static const limeColor = Color(0xFFCDDC4C);
  static const yellowColor = Color(0xFFFFEB4F);
  static const amberColor = Color(0xFFFFC02D);
  static const orangeColor = Color(0xFFFF981F);
  static const deepOrangeColor = Color(0xFFFF5726);
  static const brownColor = Color(0xFF7A5548);
  static const blueGreyColor = Color(0xFF607D8A);
  static const transparentColor = Colors.transparent;

  /// Dark
  static const dark1Color = Color(0xFF181A20);
  static const dark2Color = Color(0xFF1F222A);
  static const dark3Color = Color(0xFF35383F);

  /// Background
  static const backgroundGreenColor = Color(0xFFF2FFFC);
  static const backgroundBlueColor = Color(0xFFF6FAFD);
  static const backgroundOrangeColor = Color(0xFFFFF8ED);
  static const backgroundPinkColor = Color(0xFFFFF5F5);
  static const backgroundYellowColor = Color(0xFFFFFEE0);
  static const backgroundPurpleColor = Color(0xFFFCF4FF);
}

/// light
/*
[
  {
    "elementType": "geometry",
    "stylers": [
      { "color": "#FFF5F5F5" }
    ]
  },
  {
    "elementType": "labels.icon",
    "stylers": [
      { "visibility": "on" }
    ]
  },
  {
    "elementType": "labels.text.fill",
    "stylers": [
      { "color": "#616161" }
    ]
  }
]
 */

/*dark[
{
"elementType": "geometry",
"stylers": [
{ "color": "#1F222A" }
]
},
{
"elementType": "labels.icon",
"stylers": [
{ "visibility": "on" }
]
},
{
"elementType": "labels.text.fill",
"stylers": [
{ "color": "#9E9E9E" }
]
}
]*/
import 'dart:ui';
import 'package:flutter/material.dart';
import '../../core/app_export.dart';

String _appTheme = "primary";

/// Helper class for managing themes and colors.
class ThemeHelper {
  // A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      colorScheme: colorScheme,
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          backgroundColor: Color(0XFFFFFFFF),
          shape: RoundedRectangleBorder(
            side: BorderSide(
              color: appTheme.blue200,
              width: 1,
            ),
            borderRadius: BorderRadius.circular(
              8,
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: appTheme.blue700,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              30,
            ),
          ),
        ),
      ),
      radioTheme: RadioThemeData(
        fillColor: MaterialStateProperty.all<Color>(appTheme.black90001),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      checkboxTheme: CheckboxThemeData(
        checkColor: MaterialStateProperty.all<Color>(appTheme.black90001),
        visualDensity: const VisualDensity(
          vertical: -4,
          horizontal: -4,
        ),
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        labelMedium: TextStyle(
          color: appTheme.black90001.withOpacity(0.65),
          fontSize: getFontSize(
            10,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            19,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        titleSmall: TextStyle(
          color: appTheme.blue200,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            13,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        headlineLarge: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            30,
          ),
          fontFamily: 'Kanit',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            28,
          ),
          fontFamily: 'DM Sans',
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            19,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w600,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            25,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        bodySmall: TextStyle(
          color: appTheme.black90001,
          fontSize: getFontSize(
            11,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        displayMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            40,
          ),
          fontFamily: 'Nunito',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: getFontSize(
            23,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
      ),
      visualDensity: VisualDensity.standard,
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    background: Color(0XFF545454),
    error: Color(0XFF2C2C41),
    errorContainer: Color(0XFF60AFF8),
    inversePrimary: Color(0XFF545454),
    inverseSurface: Color(0XFF2C2C41),
    onBackground: Color(0XFF090908),
    onError: Color(0XFFFAFAFA),
    onErrorContainer: Color(0XFF0B11A3),
    onInverseSurface: Color(0XFFFAFAFA),
    onPrimary: Color(0XFF2C2C41),
    onPrimaryContainer: Color(0XFF090908),
    onSecondary: Color(0XFF090908),
    onSecondaryContainer: Color(0XFFE17425),
    onSurface: Color(0XFF090908),
    onSurfaceVariant: Color(0XFFE17425),
    onTertiary: Color(0XFF090908),
    onTertiaryContainer: Color(0XFFE17425),
    outline: Color(0XFF2C2C41),
    outlineVariant: Color(0XFF545454),
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF545454),
    scrim: Color(0XFF545454),
    secondary: Color(0XFF545454),
    secondaryContainer: Color(0XFF051437),
    shadow: Color(0XFF2C2C41),
    surface: Color(0XFF545454),
    surfaceTint: Color(0XFF2C2C41),
    surfaceVariant: Color(0XFF051437),
    tertiary: Color(0XFF545454),
    tertiaryContainer: Color(0XFF051437),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber200 => Color(0XFFEEDE8F);
  Color get amber400 => Color(0XFFFFCE31);
  Color get amber500 => Color(0XFFFFC107);
  Color get amber50001 => Color(0XFFFDC204);
  // Black
  Color get black900 => Color(0XFF0E0E0E);
  Color get black90001 => Color(0XFF000000);
  // Blackb
  Color get black9009b => Color(0X9B050505);
  // Blue
  Color get blue200 => Color(0XFF97C0FF);
  Color get blue50059 => Color(0X591E88F7);
  Color get blue700 => Color(0XFF2F71D4);
  Color get blueA200 => Color(0XFF4285F4);
  Color get blueA400 => Color(0XFF337FF3);
  Color get blueA40001 => Color(0XFF2F7EF4);
  // BlueGray
  Color get blueGray100 => Color(0XFFD9D9D9);
  Color get blueGray10001 => Color(0XFFCBCCCB);
  Color get blueGray200 => Color(0XFFB3BFD9);
  Color get blueGray300 => Color(0XFF8F9FC6);
  Color get blueGray400 => Color(0XFF8A8A8A);
  Color get blueGray40001 => Color(0XFF888888);
  Color get blueGray900 => Color(0XFF061A49);
  Color get blueGray90001 => Color(0XFF333333);
  // Cyan
  Color get cyan300 => Color(0XFF41DBE5);
  // DeepOrange
  Color get deepOrange50 => Color(0XFFFFEBE6);
  Color get deepOrangeA100 => Color(0XFFFF9D73);
  // Gray
  Color get gray100 => Color(0XFFF3F3F3);
  Color get gray10001 => Color(0XFFF7F7F7);
  Color get gray200 => Color(0XFFF1EFEF);
  Color get gray20001 => Color(0XFFE7E7E7);
  Color get gray20002 => Color(0XFFF0EFEF);
  Color get gray20003 => Color(0XFFECECEC);
  Color get gray20004 => Color(0XFFEEEEEE);
  Color get gray20005 => Color(0XFFEAEAEA);
  Color get gray300 => Color(0XFFE6E6E6);
  Color get gray30001 => Color(0XFFE4E4E4);
  Color get gray400 => Color(0XFFB0B0B0);
  Color get gray40001 => Color(0XFFBCBCBC);
  Color get gray40002 => Color(0XFFB3BBB1);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFF908F9D);
  Color get gray50001 => Color(0XFFA89E9E);
  Color get gray5001 => Color(0XFFFCFCFC);
  Color get gray600 => Color(0XFF7F7F7F);
  Color get gray700 => Color(0XFF5E5C5C);
  Color get gray900 => Color(0XFF121111);
  Color get gray90035 => Color(0X35272626);
  // GrayB
  Color get gray100B2 => Color(0XB2F4F4F4);
  Color get gray900B2 => Color(0XB2111111);
  // Grayb
  Color get gray4002b => Color(0X2BD4B1B1);
  // Green
  Color get green700 => Color(0XFF2DA50C);
  Color get green800 => Color(0XFF2B9F03);
  Color get green80001 => Color(0XFF2C980E);
  Color get green80002 => Color(0XFF2C9F03);
  Color get greenA100 => Color(0XFFC4F8B5);
  Color get greenA700 => Color(0XFF05C63B);
  Color get greenA70001 => Color(0XFF0ECD43);
  // Indigoc
  Color get indigo1007c => Color(0X7CB6CEE7);
  // Indigo
  Color get indigo400 => Color(0XFF5C74AD);
  Color get indigo40001 => Color(0XFF5073C4);
  Color get indigo50 => Color(0XFFE0E5FF);
  Color get indigo5001 => Color(0XFFE7EAF3);
  Color get indigo600 => Color(0XFF3C599D);
  Color get indigo900 => Color(0XFF0A2B78);
  Color get indigo90001 => Color(0XFF08215E);
  Color get indigo90002 => Color(0XFF1B3480);
  // LightBlue
  Color get lightBlue300 => Color(0XFF51C4F6);
  Color get lightBlue50 => Color(0XFFE9F9FF);
  Color get lightBlue800 => Color(0XFF046FAC);
  // LightGreen
  Color get lightGreen50 => Color(0XFFECFDE7);
  Color get lightGreen600 => Color(0XFF78C829);
  Color get lightGreen900 => Color(0XFF238009);
  Color get lightGreen90001 => Color(0XFF25790E);
  Color get lightGreenA700 => Color(0XFF3AD30F);
  // Lime
  Color get lime50 => Color(0XFFFBF8E7);
  Color get lime500 => Color(0XFFE1C63C);
  // Orange
  Color get orange50 => Color(0XFFFEF2E6);
  Color get orange700 => Color(0XFFF08000);
  // Pink
  Color get pink500 => Color(0XFFF53154);
  // Purple
  Color get purple200 => Color(0XFFCB9CF1);
  // Red
  Color get red500 => Color(0XFFEB4335);
  Color get red700 => Color(0XFFE13125);
  Color get redA400 => Color(0XFFFF253F);
  Color get redA40001 => Color(0XFFF72A42);
  Color get redA700 => Color(0XFFEE0000);
  // White
  Color get whiteA700 => Color(0XFFFEFEFE);
  Color get whiteA70001 => Color(0XFFFCFDFF);
  // Yellow
  Color get yellow900 => Color(0XFFF97023);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();
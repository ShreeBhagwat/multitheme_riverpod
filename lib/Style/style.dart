import 'package:flutter/material.dart';

class Styles {
  static const _defaultTextStyle = TextStyle(fontWeight: FontWeight.w500);

  ThemeData themeData(int index, BuildContext context) {
    switch (index) {
      case 0:
        return setWhiteTheme(context);
      case 1:
        return setBlackTheme(context);
      case 2:
        return setOtherTheme(
            context: context, mColor: Colors.red, color: Colors.red);
      case 3:
        return setOtherTheme(
            context: context, mColor: Colors.green, color: Colors.greenAccent);
        ;
      case 4:
        return setOtherTheme(
            context: context, mColor: Colors.blue, color: Colors.blueAccent);
      case 5:
        return setOtherTheme(
            context: context,
            mColor: Colors.yellow,
            color: Colors.yellowAccent);
      case 6:
        return setOtherTheme(
            context: context, mColor: Colors.amber, color: Colors.amber);
      case 7:
        return setOtherTheme(
            context: context,
            mColor: Colors.deepPurple,
            color: Colors.deepPurpleAccent);
      default:
        return setWhiteTheme(context);
    }
  }

  ThemeData setWhiteTheme(BuildContext context) {
    return ThemeData(
      // primarySwatch: Colors.white,
      primaryColor: Colors.white,
      backgroundColor: Colors.white,
      indicatorColor: Colors.black,
      hintColor: Colors.grey.shade600,
      errorColor: Colors.red.shade500,
      highlightColor: Colors.grey.shade200,
      focusColor: Colors.black,
      disabledColor: Colors.grey.shade300,
      cardColor: Colors.grey.shade100,
      brightness: Brightness.light,
      buttonTheme: Theme.of(context)
          .buttonTheme
          .copyWith(colorScheme: const ColorScheme.light()),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
    );
  }

  ThemeData setBlackTheme(BuildContext context) {
    return ThemeData(
      // primarySwatch: Colors.black,
      primaryColor: Colors.black,
      backgroundColor: Colors.black,
      indicatorColor: Colors.white,
      hintColor: Colors.grey.shade500,
      errorColor: Colors.red.shade900,
      highlightColor: Colors.grey.shade700,
      focusColor: Colors.white,
      disabledColor: Colors.grey.shade800,
      cardColor: const Color.fromARGB(255, 41, 40, 40),
      brightness: Brightness.dark,
      buttonTheme: Theme.of(context)
          .buttonTheme
          .copyWith(colorScheme: const ColorScheme.dark()),
      appBarTheme: const AppBarTheme(
        backgroundColor: Color.fromARGB(255, 28, 28, 28),
        elevation: 0,
      ),
    );
  }

  ThemeData setOtherTheme(
      {required BuildContext context,
      required MaterialColor mColor,
      required Color color}) {
    return ThemeData(
      primarySwatch: mColor,
      primaryColor: mColor,
      backgroundColor: Colors.white,
      indicatorColor: mColor,
      hintColor: mColor.shade200,
      errorColor: mColor.shade500,
      highlightColor: Colors.grey.shade200,
      focusColor: color,
      disabledColor: Colors.grey.shade300,
      cardColor: Colors.grey.shade100,
      brightness: Brightness.light,
      buttonTheme: Theme.of(context)
          .buttonTheme
          .copyWith(colorScheme: const ColorScheme.light()),
      appBarTheme: AppBarTheme(
        backgroundColor: mColor,
        elevation: 0,
      ),
    );
  }

  static TextTheme textTheme(BuildContext context) {
    return TextTheme(
      headline1: _defaultTextStyle.copyWith(
          fontSize: 100,
          color: Theme.of(context).indicatorColor,
          fontWeight: FontWeight.w200),
      headline2: _defaultTextStyle.copyWith(
          fontSize: 25, color: Theme.of(context).indicatorColor),
      headline3: _defaultTextStyle.copyWith(
          fontSize: 16, color: Theme.of(context).indicatorColor),
      headline4: _defaultTextStyle.copyWith(
          fontSize: 18, color: Theme.of(context).indicatorColor),
      headline5: _defaultTextStyle.copyWith(
          fontSize: 14, color: Theme.of(context).indicatorColor),
      bodyText1: _defaultTextStyle.copyWith(
          fontSize: 13, color: Theme.of(context).indicatorColor),
      bodyText2: _defaultTextStyle.copyWith(
          fontSize: 20, color: Theme.of(context).indicatorColor),
      subtitle1: _defaultTextStyle.copyWith(
          fontSize: 12, color: Theme.of(context).hintColor),
      subtitle2: _defaultTextStyle.copyWith(
          fontSize: 10, color: Theme.of(context).hintColor),
    );
  }
}

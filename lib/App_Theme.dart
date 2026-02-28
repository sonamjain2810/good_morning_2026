import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'utils/SizeConfig.dart';

class AppTheme {
  AppTheme._();

  // LIGHT COLORS
  static const MaterialColor _lightPrimaryVariantColor = Colors.yellow;
  static const Color _lightDividerColor = Colors.white;
  static const Color _lightOnPrimaryColor = Colors.black;
  static final Color _lightPrimaryIconThemeColor = Colors.cyan.shade600;
  static const Color _lightPrimaryColor = Colors.cyan;
  static const Color _lightButtonTextColor = Colors.white;
  static final Color _lightButtonColor = Colors.pink.shade300;
  static const Color _lightButtonSplashColor = Colors.deepOrangeAccent;
  static const Color _lightAppBarTextColor = Colors.blueGrey;
  static final Color _lightCardColor = Colors.cyan.shade600;
  static const Color _lightShadowColor = Colors.grey;

  // DARK COLORS
  static const Color _darkIconColor = Colors.white;
  static const Color _darkPrimaryColor = Colors.black;
  static final Color _darkPrimaryVariantColor = Colors.grey.shade800;
  static const Color _darkSecondaryColor = Colors.white;
  static const Color _darkOnPrimaryColor = Colors.white;
  static const Color _darkPrimaryIconThemeColor = Colors.red;
  static const Color _darkButtonTextColor = Colors.white;
  static const Color _darkButtonColor = Colors.red;
  static const Color _darkButtonSplashColor = Colors.blue;
  static const Color _darkAppBarTextColor = Colors.white;
  static const Color _darkDividerColor = Colors.white;
  static const Color _darkCardColor = Colors.grey;
  static const Color _darkShadowColor = Colors.white70;

  // LIGHT THEME
  static final ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: _lightPrimaryColor,
    primarySwatch: _lightPrimaryVariantColor,
    dividerColor: _lightDividerColor,

    appBarTheme: AppBarTheme(
      backgroundColor: _lightPrimaryVariantColor,
      titleTextStyle: _lightAppBarTextTheme.displayLarge,
      elevation: 8.0,
      iconTheme: IconThemeData(color: _lightPrimaryIconThemeColor),
    ),

    textTheme: TextTheme(
      displayLarge: GoogleFonts.oswald(
        textStyle: _lightScreenHeading1TextStyle,
      ),
      titleLarge: GoogleFonts.ptSans(
        textStyle: _lightScreenSubTitle1TextStyle,
      ),
      titleMedium: GoogleFonts.ptSans(
        textStyle: _lightScreenSubTitle2TextStyle,
      ),
      labelLarge: GoogleFonts.ptSans(
        textStyle: _lightButtonTextTextStyle,
      ),
      bodyLarge: GoogleFonts.ptSans(
        textStyle: _lightScreenBodyText1TextStyle,
      ),
      bodyMedium: GoogleFonts.ptSans(
        textStyle: _lightScreenBodyText2TextStyle,
      ),
      bodySmall: GoogleFonts.ptSans(
        textStyle: _lightScreenBodyText2TextStyle,
      ),
    ),

    buttonTheme: _lightButtonThemeData,
    cardTheme: _lightCardTheme,
    inputDecorationTheme: _lightInputDecorationTheme,
  );

  static final InputDecorationTheme _lightInputDecorationTheme =
      InputDecorationTheme(
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _lightPrimaryVariantColor),
      borderRadius: BorderRadius.circular(20),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: _lightPrimaryVariantColor),
    ),
    hintStyle: GoogleFonts.ptSans(
      textStyle: _lightScreenBodyText1TextStyle,
    ),
    contentPadding:
        const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
  );

  static final TextTheme _lightAppBarTextTheme = TextTheme(
    displayLarge: GoogleFonts.lobster(
      textStyle: const TextStyle(color: _lightAppBarTextColor),
    ),
  );

  static final ButtonThemeData _lightButtonThemeData = ButtonThemeData(
    textTheme: ButtonTextTheme.primary,
    buttonColor: _lightButtonColor,
    splashColor: _lightButtonSplashColor,
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
  );

  static final TextStyle _lightButtonTextTextStyle = TextStyle(
    fontSize: 1.56 * SizeConfig.textMultiplier,
    color: _lightButtonTextColor,
  );

  static final TextStyle _lightScreenHeading1TextStyle = TextStyle(
    fontSize: 2.68 * SizeConfig.textMultiplier,
    fontWeight: FontWeight.bold,
    color: _lightOnPrimaryColor,
    letterSpacing: 1,
  );

  static final TextStyle _lightScreenBodyText1TextStyle = TextStyle(
    fontSize: 2.23 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .5,
  );

  static final TextStyle _lightScreenBodyText2TextStyle = TextStyle(
    fontSize: 2 * SizeConfig.textMultiplier,
    color: _lightButtonTextColor,
    letterSpacing: .5,
  );

  static final TextStyle _lightScreenSubTitle1TextStyle = TextStyle(
    fontSize: 1.79 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .3,
  );

  static final TextStyle _lightScreenSubTitle2TextStyle = TextStyle(
    fontSize: 1.60 * SizeConfig.textMultiplier,
    color: _lightOnPrimaryColor,
    letterSpacing: .1,
  );

  static final CardThemeData _lightCardTheme = CardThemeData(
    elevation: 6,
    color: _lightCardColor,
    shadowColor: _lightShadowColor,
  );

  // DARK THEME
  static final ThemeData darkTheme = ThemeData(
    scaffoldBackgroundColor: _darkPrimaryColor,
    dividerColor: _darkDividerColor,

    appBarTheme: AppBarTheme(
      backgroundColor: _darkPrimaryVariantColor,
      titleTextStyle: GoogleFonts.lobster(
        textStyle: TextStyle(color: _darkAppBarTextColor),
      ),
      elevation: 8,
      iconTheme: const IconThemeData(color: _darkOnPrimaryColor),
    ),

    textTheme: TextTheme(
      displayLarge: GoogleFonts.oswald(
        textStyle: _darkScreenHeading1TextStyle,
      ),
      bodyLarge: GoogleFonts.ptSans(
        textStyle: _darkScreenBodyText1TextStyle,
      ),
      titleMedium: GoogleFonts.ptSans(
        textStyle: _darkScreenSubTitle1TextStyle,
      ),
      titleSmall: GoogleFonts.ptSans(
        textStyle: _darkScreenSubTitle2TextStyle,
      ),
      labelLarge: GoogleFonts.ptSans(
        textStyle: _darkButtonTextTextStyle,
      ),
    ),

    cardTheme: _darkCardTheme,
    buttonTheme: _darkButtonThemeData,
    inputDecorationTheme: _darkInputDecorationTheme,
  );

  static final InputDecorationTheme _darkInputDecorationTheme =
      _lightInputDecorationTheme.copyWith();

  static final TextStyle _darkScreenHeading1TextStyle =
      _lightScreenHeading1TextStyle.copyWith(color: _darkOnPrimaryColor);

  static final TextStyle _darkScreenBodyText1TextStyle =
      _lightScreenBodyText1TextStyle.copyWith(color: _darkOnPrimaryColor);

  static final TextStyle _darkScreenSubTitle1TextStyle =
      _lightScreenSubTitle1TextStyle.copyWith(color: _darkOnPrimaryColor);

  static final TextStyle _darkScreenSubTitle2TextStyle =
      _lightScreenSubTitle2TextStyle.copyWith(color: _darkOnPrimaryColor);

  static final ButtonThemeData _darkButtonThemeData =
      _lightButtonThemeData.copyWith(
    buttonColor: _darkButtonColor,
    splashColor: _darkButtonSplashColor,
  );

  static final TextStyle _darkButtonTextTextStyle =
      _lightButtonTextTextStyle.copyWith(color: _darkButtonTextColor);

  static final CardThemeData _darkCardTheme = _lightCardTheme.copyWith(
    color: _darkCardColor,
    shadowColor: _darkShadowColor,
  );
}

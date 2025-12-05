import 'package:flutter/material.dart';
import 'package:dev_fest_2025/themes/app_color.dart';
import 'package:dev_fest_2025/themes/app_fonts.dart';

class AppTheme {
  // Common text theme
  static const TextTheme commonTextTheme = TextTheme(
    bodyMedium: AppFonts.fontRegular16,
    bodyLarge: AppFonts.fontRegular18,
    bodySmall: AppFonts.fontRegular14,
    displayLarge: AppFonts.fontRegular18,
    displayMedium: AppFonts.fontRegular16,
    displaySmall: AppFonts.fontRegular14,
    headlineLarge: AppFonts.fontHeadline22,
    headlineMedium: AppFonts.fontHeadline18,
    headlineSmall: AppFonts.fontHeadline16,
  );

  // Common button shape
  static final RoundedRectangleBorder commonButtonShape = RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(4.0),
  );

  // Common button padding
  static const EdgeInsetsGeometry commonButtonPadding = EdgeInsets.symmetric(horizontal: 8, vertical: 8);

  // Common OutlinedButton style
  static ButtonStyle outlinedButtonStyle({
    required Color backgroundColor,
    required Color foregroundColor,
    BorderSide? side,
  }) {
    return OutlinedButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      padding: commonButtonPadding,
      shape: commonButtonShape,
      elevation: 0.0,
      side: side ?? BorderSide.none,
      textStyle: AppFonts.fontRegular16,
    );
  }

  // Common TextButton style
  static ButtonStyle textButtonStyle({
    required Color backgroundColor,
    required Color foregroundColor,
    double elevation = 0.0,
  }) {
    return TextButton.styleFrom(
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      textStyle: AppFonts.fontRegular16,
      padding: commonButtonPadding,
      shape: commonButtonShape,
      elevation: elevation,
      side: BorderSide.none,
    );
  }

  // Common ElevatedButton style
  static ButtonStyle elevatedButtonStyle({required Color backgroundColor, required Color foregroundColor}) {
    return ElevatedButton.styleFrom(
      elevation: 1,
      textStyle: AppFonts.fontRegular16,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      padding: commonButtonPadding,
      shape: commonButtonShape,
    );
  }

  // Common InputDecorationTheme
  static InputDecorationTheme inputDecorationTheme({required Color fillColor, Color? labelColor}) {
    return InputDecorationTheme(
      filled: true,
      fillColor: fillColor,
      contentPadding: const EdgeInsets.all(12.0),
      errorStyle: AppFonts.fontRegular16,
      errorMaxLines: 2,
      labelStyle: labelColor != null ? TextStyle(color: labelColor) : null,
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide.none),
      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide.none),
      errorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide.none),
      focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(4.0), borderSide: BorderSide.none),
    );
  }

  // Common SliderThemeData
  static const SliderThemeData commonSliderTheme = SliderThemeData(
    activeTrackColor: AppColor.primaryColor,
    inactiveTrackColor: AppColor.appLightColor,
    thumbColor: AppColor.primaryColor,
    overlayColor: AppColor.primaryColor,
    valueIndicatorColor: AppColor.primaryColor,
    valueIndicatorTextStyle: AppFonts.fontBold16,
  );

  // Common ChipThemeData
  static const ChipThemeData commonChipTheme = ChipThemeData(
    side: BorderSide.none,
    backgroundColor: AppColor.whiteColor,
    shape: StadiumBorder(),
    checkmarkColor: AppColor.primaryColor,
    iconTheme: IconThemeData(color: AppColor.primaryColor),
    padding: EdgeInsets.zero,
  );

  // Common ListTileThemeData
  static const ListTileThemeData commonListTileTheme = ListTileThemeData(
    contentPadding: EdgeInsets.symmetric(horizontal: 15.0),
    horizontalTitleGap: 10,
  );

  // Common DividerThemeData
  static const DividerThemeData commonDividerTheme = DividerThemeData(
    color: AppColor.greyColor,
    thickness: 0.2,
    space: 20,
  );

  // Common DatePickerThemeData
  static DatePickerThemeData commonDatePickerTheme(Color surfaceTintColor) => DatePickerThemeData(
    headerHelpStyle: AppFonts.fontRegular16,
    headerHeadlineStyle: AppFonts.fontBold22,
    headerForegroundColor: AppColor.primaryColor,
    dayStyle: AppFonts.fontRegular16,
    weekdayStyle: AppFonts.fontRegular16,
    yearStyle: AppFonts.fontRegular22,
    dividerColor: AppColor.primaryColor,
    surfaceTintColor: surfaceTintColor,
    shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(4.0))),
    confirmButtonStyle: ButtonStyle(textStyle: WidgetStateProperty.all(AppFonts.fontRegular16)),
    cancelButtonStyle: ButtonStyle(textStyle: WidgetStateProperty.all(AppFonts.fontRegular16)),
  );

  // Common progressIndicator theme
  static const ProgressIndicatorThemeData commonProgressIndicatorTheme = ProgressIndicatorThemeData(
    color: AppColor.primaryColor,
    circularTrackColor: AppColor.appLightColor,
  );

  // Common tab bar theme
  static const TabBarThemeData commonTabBarTheme = TabBarThemeData(
    labelStyle: AppFonts.fontBold16,
    unselectedLabelStyle: AppFonts.fontBold16,
    dividerColor: AppColor.whiteColor,
    indicatorSize: TabBarIndicatorSize.label,
    indicatorColor: AppColor.primaryColor,
    labelColor: AppColor.primaryColor,
  );

  // Common bottom navigation bar theme properties
  static const BottomNavigationBarThemeData commonBottomNavBarTheme = BottomNavigationBarThemeData(
    elevation: 0.0,
    selectedIconTheme: IconThemeData(color: AppColor.primaryColor),
    selectedItemColor: AppColor.appMaterialColor,
    unselectedIconTheme: IconThemeData(color: AppColor.primaryColor),
    selectedLabelStyle: TextStyle(color: AppColor.primaryColor, fontSize: 12),
    unselectedLabelStyle: TextStyle(color: Colors.blue, fontSize: 12),
    type: BottomNavigationBarType.fixed,
  );

  // Common switch theme
  static SwitchThemeData commonSwitchTheme = SwitchThemeData(
    thumbColor: WidgetStateProperty.all(AppColor.primaryColor),
    trackColor: WidgetStateProperty.all(AppColor.greyColor),
    overlayColor: WidgetStateProperty.all(AppColor.primaryColor),
  );

  // Base theme properties that are shared between light and dark modes
  static ThemeData _baseTheme({
    required Brightness brightness,
    required Color scaffoldColor,
    required Color foregroundColor,
  }) {
    return ThemeData(
      useMaterial3: true,
      fontFamily: 'RegularText',
      brightness: brightness,
      scaffoldBackgroundColor: scaffoldColor,
      primarySwatch: AppColor.appMaterialColor,
      dividerColor: Colors.transparent,
      hoverColor: AppColor.appLightColor,
      textTheme: commonTextTheme,
      progressIndicatorTheme: commonProgressIndicatorTheme,
      tabBarTheme: commonTabBarTheme,
      switchTheme: commonSwitchTheme,
      listTileTheme: commonListTileTheme,
      dividerTheme: commonDividerTheme,
      chipTheme: commonChipTheme,
    );
  }

  // Light mode color theme
  static ThemeData lightTheme =
      _baseTheme(
        brightness: Brightness.light,
        scaffoldColor: AppColor.scaffoldColor,
        foregroundColor: AppColor.blackColor,
      ).copyWith(
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColor.primaryColor,
          onPrimary: AppColor.whiteColor,
          secondary: AppColor.greyColor,
          onSecondary: AppColor.greyColor,
          error: AppColor.greyColor,
          onError: AppColor.greyColor,
          surface: AppColor.whiteColor,
          onSurface: Colors.black,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          foregroundColor: AppColor.blackColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: AppColor.blackColor),
          titleTextStyle: AppFonts.fontHeadline20,
          surfaceTintColor: AppColor.blackColor,
          actionsIconTheme: IconThemeData(color: AppColor.blackColor),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: outlinedButtonStyle(
            backgroundColor: AppColor.appLightColor,
            foregroundColor: AppColor.primaryColor,
            side: const BorderSide(color: AppColor.primaryColor, width: 0.2),
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: textButtonStyle(backgroundColor: AppColor.primaryColor, foregroundColor: AppColor.whiteColor),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: elevatedButtonStyle(backgroundColor: AppColor.appLightColor, foregroundColor: AppColor.primaryColor),
        ),
        bottomNavigationBarTheme: commonBottomNavBarTheme.copyWith(backgroundColor: AppColor.whiteColor),
        cardTheme: const CardThemeData(
          elevation: 0.2,
          color: AppColor.whiteColor,
          shadowColor: AppColor.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(12.0))),
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColor.primaryColor,
          selectionColor: AppColor.primaryColor,
          selectionHandleColor: AppColor.primaryColor,
        ),
        inputDecorationTheme: inputDecorationTheme(fillColor: AppColor.whiteColor),
        sliderTheme: commonSliderTheme,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.zero,
            highlightColor: AppColor.scaffoldColor,
            hoverColor: AppColor.primaryColor,
            focusColor: AppColor.primaryColor,
            alignment: Alignment.center,
            foregroundColor: AppColor.greyColor,
            shadowColor: AppColor.greyColor,
          ),
        ),
        datePickerTheme: commonDatePickerTheme(AppColor.primaryColor),
      );

  // Dark mode color theme
  static ThemeData darkTheme =
      _baseTheme(
        brightness: Brightness.dark,
        scaffoldColor: AppColor.darkGreyColor,
        foregroundColor: AppColor.whiteColor,
      ).copyWith(
        colorScheme: ColorScheme.dark(),
        appBarTheme: const AppBarTheme(
          centerTitle: false,
          backgroundColor: AppColor.darkGreyColor,
          foregroundColor: AppColor.whiteColor,
          elevation: 0.0,
          iconTheme: IconThemeData(color: AppColor.blackColor),
          titleTextStyle: AppFonts.fontHeadline18,
          surfaceTintColor: AppColor.whiteColor,
          actionsIconTheme: IconThemeData(color: AppColor.blackColor),
        ),
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: outlinedButtonStyle(backgroundColor: AppColor.blackColor, foregroundColor: AppColor.whiteColor),
        ),
        textButtonTheme: TextButtonThemeData(
          style: textButtonStyle(
            backgroundColor: AppColor.blackColor,
            foregroundColor: AppColor.whiteColor,
            elevation: 1.0,
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: elevatedButtonStyle(backgroundColor: AppColor.darkGreyColor, foregroundColor: AppColor.whiteColor),
        ),
        bottomNavigationBarTheme: commonBottomNavBarTheme.copyWith(backgroundColor: AppColor.darkGreyColor),
        cardTheme: CardThemeData(
          elevation: 0.2,
          color: AppColor.darkGreyColor,
          shadowColor: AppColor.whiteColor,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          surfaceTintColor: AppColor.darkGreyColor,
        ),
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: AppColor.whiteColor,
          selectionColor: AppColor.whiteColor,
          selectionHandleColor: AppColor.whiteColor,
        ),
        inputDecorationTheme: inputDecorationTheme(fillColor: AppColor.blackColor, labelColor: AppColor.lightGreyColor),
        sliderTheme: commonSliderTheme,
        iconButtonTheme: IconButtonThemeData(
          style: IconButton.styleFrom(
            shape: const CircleBorder(),
            padding: EdgeInsets.zero,
            highlightColor: AppColor.darkGreyColor,
            hoverColor: AppColor.blackColor,
            focusColor: AppColor.blackColor,
            alignment: Alignment.center,
            foregroundColor: AppColor.darkGreyColor,
            backgroundColor: Colors.transparent,
          ),
        ),
        datePickerTheme: commonDatePickerTheme(AppColor.primaryColor),
      );
}

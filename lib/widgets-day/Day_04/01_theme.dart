import 'package:flutter/material.dart';

ThemeData KTheme() {
  return ThemeData(
    // primaryColor: ,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.deepPurple.shade200,
        titleSpacing: 5,
        titleTextStyle: TextStyle(
            color: Colors.grey.shade800,
            fontSize: 20,
            fontWeight: FontWeight.bold)),
    textTheme: TextTheme(
      headlineLarge: TextStyle(fontSize: 30, color: Colors.black),
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
    buttonTheme: ButtonThemeData(buttonColor: Colors.purpleAccent),
    bottomNavigationBarTheme:
        BottomNavigationBarThemeData(backgroundColor: Colors.deepPurple),
    bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.deepOrange),
    drawerTheme: DrawerThemeData(backgroundColor: Colors.purple),
    dropdownMenuTheme: DropdownMenuThemeData(
        textStyle: TextStyle(backgroundColor: Colors.black38)),
    cardTheme: CardTheme(color: Colors.purple.shade100, elevation: 10),
    //  progressIndicatorTheme: ,
    //  dialogTheme: ,
    checkboxTheme: CheckboxThemeData(
        // checkColor: MaterialStateProperty.all(Colors.white),
        // fillColor: MaterialStateProperty.all(Colors.deepPurple)
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5))),
    snackBarTheme: SnackBarThemeData(
        backgroundColor: Colors.blueGrey,
        actionTextColor: Colors.deepOrange[100]),
    //  tabBarTheme: ,
    //  chipTheme: ,
    //  tooltipTheme: ,
    //  toggleButtonsTheme: ,
    //  switchTheme: ,
    //  popupMenuTheme: ,
  );
}

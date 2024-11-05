import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(255, 217, 44, 240);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.red,
  Color.fromARGB(255, 83, 161, 86),
  Colors.yellow,
  Colors.purple,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectedColor;
  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be greater than or equal to 0 and ${_colorThemes.length}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectedColor],
      //brightness: Brightness.dark, // Change to light for light theme
    );
  }
}

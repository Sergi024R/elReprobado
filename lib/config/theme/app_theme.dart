import 'package:flutter/material.dart';

const Color _customColor = Color.fromARGB(0, 217, 12, 145);
const List<Color> _colorThemes = [
  _customColor,
  Colors.blue,
  Colors.teal,
  Colors.green,
  Colors.yellow,
  Colors.orange,
  Colors.pink,
];

class AppTheme {
  final int selectdColor;

  AppTheme({this.selectdColor = 0})
      : assert(selectdColor >= 0 && selectdColor < _colorThemes.length,
            'Solo se encuentra los colores de un rango de 0 a ${_colorThemes.length - 1}');
  ThemeData theme() {
    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: _colorThemes[selectdColor],
    );
  }
}

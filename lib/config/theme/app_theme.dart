import 'package:flutter/material.dart';

const Color _charcoal = Color(0xFF264653);
const Color _persianGreen = Color(0xFF2a9d8f);
const Color _saffron = Color(0xFFe9c46a);
const Color _sandyBrown = Color(0xFFf4a261);
const Color _burntSienna = Color(0xFFe76f51);

const List<Color> _colorThemes = [
  _charcoal,
  _persianGreen,
  _saffron,
  _sandyBrown,
  _burntSienna,
];

class AppTheme {
  final int selectedColor;

  AppTheme({this.selectedColor = 0})
      : assert(selectedColor >= 0 && selectedColor <= _colorThemes.length - 1,
            'Colors must be between 0 an ${_colorThemes.length - 1}');

  ThemeData theme() {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: _colorThemes[selectedColor],
      ),
    );
  }
}

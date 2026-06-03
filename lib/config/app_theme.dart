import 'package:flutter/material.dart';

enum AppThemeColor {
	blue(Colors.blue),
	red(Colors.red),
	green(Colors.green),
	orange(Colors.orange),
	purple(Colors.purple),
	teal(Colors.teal);

	const AppThemeColor(this.color);

	final Color color;
}

class AppTheme {

  AppTheme();

  ThemeData getTheme(AppThemeColor color) {
		final isValidColor = AppThemeColor.values.contains(color);
		assert(
			isValidColor,
			'Invalid AppThemeColor provided. Falling back to blue.',
		);

		final selectedColor = isValidColor ? color : AppThemeColor.blue;

    return ThemeData(
      useMaterial3: true,
      colorSchemeSeed: selectedColor.color,
    );
  }
}


import 'package:flutter/material.dart';

class ButtonsScreen extends StatelessWidget {
  final String _title = 'Buttons';

	const ButtonsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
    );
	}
}

import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  final String _title = 'Cards';

	const CardsScreen({super.key});

	@override
	Widget build(BuildContext context) {
		return Scaffold(
      appBar: AppBar(
        title: Text(_title),
      ),
    );
	}
}

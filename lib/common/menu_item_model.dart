import 'package:flutter/material.dart';

class MenuItemModel {
	final String label;
	final String sublabel;
	final IconData icon;
	final String route;

	const MenuItemModel({
		required this.label,
		required this.sublabel,
		required this.icon,
		required this.route,
	});
}

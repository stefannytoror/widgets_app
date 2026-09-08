
import 'package:widgets_app/common/menu_item_model.dart';
import 'package:flutter/material.dart';

final List<MenuItemModel> AppMenuItems = [
  const MenuItemModel(
    label: 'Button',
    sublabel: 'Button widget',
    icon: Icons.radio_button_checked,
    route: '/button',
  ),
  const MenuItemModel(
    label: 'Toggle',
    sublabel: 'Toggle widget',
    icon: Icons.toggle_on,
    route: '/toggle',
  ),
  const MenuItemModel(
    label: 'Drawer',
    sublabel: 'Drawer widget',
    icon: Icons.menu,
    route: '/drawer',
  ),
];

import 'package:flutter/material.dart';
import 'package:widgets_app/config/app_menu_items.dart';
import 'package:widgets_app/presentation/detail/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        toolbarHeight: 72,
        elevation: 0,
        title: const Text(
          'List of Widgets',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.w800),
        ),
      ),
      body: _HomeWidgetList(),
    );
  }
}

class _HomeWidgetList extends StatelessWidget {

  
  @override
  Widget build(BuildContext context) {
    final appColor = Theme.of(context).colorScheme;

    return ListView.builder(
      itemCount: AppMenuItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(AppMenuItems[index].icon, color: appColor.primary),
          trailing: Icon(Icons.arrow_forward_ios_rounded, color: appColor.primary),
          title: Text(AppMenuItems[index].label),
          subtitle: Text(AppMenuItems[index].sublabel),
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute<void>(
                builder: (context) => DetailScreen(title: AppMenuItems[index].label),
              ),
            );
          },
        );
      },
    );
  }
}

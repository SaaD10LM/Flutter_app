import 'package:flutter/material.dart';

class MyDrawerItem extends StatelessWidget {
  final String title;
  final Icon itemIcon;
  final String route;

  const MyDrawerItem({
    super.key,
    required this.title,
    required this.itemIcon,
    required this.route,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: itemIcon,
      trailing: const Icon(Icons.arrow_forward),
      title: Text(title),
      onTap: () {
        Navigator.of(context).pop(); // Close the drawer
        Navigator.pushNamed(context, route); // Navigate to the route
      },
    );
  }
}

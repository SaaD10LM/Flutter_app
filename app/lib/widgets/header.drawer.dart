import 'package:flutter/material.dart';

class MyHeaderDrawer extends StatelessWidget {
  const MyHeaderDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/img.png"),
            radius: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/img.png"),
            radius: 30,
          ),
        ],
      ),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.white, Theme
              .of(context)
              .primaryColor
          ],
        ),
      ),
    );
  }
}

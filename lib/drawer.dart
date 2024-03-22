import 'package:flutter/material.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      // padding: const EdgeInsets.symmetric(vertical: 50),
      children: [
        const DrawerHeader(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Text(
            'Your Items',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
        ),
        ListTile(
          title: Text("item 1"),
          onTap: () {},
        ),
        ListTile(
          title: Text("item 2"),
          onTap: () {},
        ),
        ListTile(
          title: Text("item 3"),
          onTap: () {},
        )
      ],
    ));
  }
}

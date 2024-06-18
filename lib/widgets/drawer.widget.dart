import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  const MyAppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.black, Theme.of(context).primaryColor],
              ),
            ),
            child: const Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("images/profile_pic.png"),
                  radius: 50,
                ),
              ],
            ),
          ),
          ListTile(
            title: const Text("Home"),
            leading: Icon(
              Icons.home_filled,
              color: Theme.of(context).primaryColor,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              Navigator.pushNamed(context, "/home");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 1,
          ),
          ListTile(
            title: Text("Products"),
            leading: Icon(
              Icons.list_sharp,
              color: Theme.of(context).primaryColor,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Theme.of(context).primaryColor,
            ),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.pushNamed(context, "/products");
            },
          ),
          const Divider(
            color: Colors.black12,
            height: 1,
          ),
        ],
      ),
    );
  }
}

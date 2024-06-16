import 'package:madproject/components/theme_notifier.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../screens/AuthPage.dart';



class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeNotifier>(
        builder: (context, ThemeNotifier notifier, child)
    {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:  [
            UserAccountsDrawerHeader(
              accountName: Text('Damsath'),
              accountEmail: Text("Damsath@gmail.com"),
              currentAccountPicture: CircleAvatar(
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/images/profile_pic.jpeg',),
                    width: 90,
                    height: 90,
                    fit: BoxFit.cover,),
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.deepPurple,
              ),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text("Favorite"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.share),
              title: Text("Share"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text("Profile"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.description),
              title: Text("Policies"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.nightlight_round),
              title: Text("Dark/Light Mode"),
              trailing: Switch(
                  value: notifier.isDark,
                  onChanged: (value) => notifier.changeTheme(),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Settings"),
              onTap: null,
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Exit"),
              onTap: () {
                Navigator.pushAndRemoveUntil(
                  context,
                  MaterialPageRoute(builder: (context) => Auth()),
                      (route) => false,
                );
              },
            ),
          ],
        ),
      );
    },
    );
  }
}
import 'package:flutter/material.dart';

class KNavDrawer extends StatelessWidget {
  KNavDrawer({super.key});

  String name = 'Mirza Tanvir';
  List<Widget> icon = [
    Icon(Icons.home_filled),
    Icon(Icons.message_rounded),
    Icon(Icons.account_box_rounded)
  ];
  List<String> title = ['Home', 'Message', 'Account'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Navigation Drawer"),
      ),
      drawer: NavigationDrawer(
        children: [
          DrawerHeader(
              padding: EdgeInsets.all(0),
              child: UserAccountsDrawerHeader(
                  accountName: Text(name),
                  accountEmail: Text('mirzatanvir@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    minRadius: 1,
                    child: Text(name[0] + name.split(' ')[1][0]),
                  ))),
          ...List.generate(
              icon.length,
              (index) => ListTile(
                  leading: icon[index],
                  title: Text(title[index]),
                  onTap: () {
                    print('Clicked ${title[index]}');
                    Navigator.pop(context);
                  }))
        ],
      ),
      body: Center(
        child: Text('Home'),
      ),
    );
  }
}

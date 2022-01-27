import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: userTitle('User Information')
          ),
          Divider(
            thickness: 1,
            color: Colors.amber,
          ),
          userListTitle('Email', 'Email sub', 0, context),
          userListTitle('Phone Number', '655676', 0, context),
          userListTitle('Shipping Address', '', 0, context),
          userListTitle('Joined date', 'Date', 0, context),
        ],
      ),
    );
  }

  List<IconData> _userTitleIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded
  ];
  Widget userListTitle(
      String title, String subtitle, int index, BuildContext context) {
    return Material(
        color: Colors.transparent,
        child: InkWell(
            splashColor: Theme.of(context).splashColor,
            child: ListTile(
              onTap: () {},
              title: Text(title),
              subtitle: Text(subtitle),
              leading: Icon(_userTitleIcons[index]),
            )));
  }

  Widget userTitle(String title) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),
    );
  }
}

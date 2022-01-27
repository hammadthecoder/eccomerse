import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:list_tile_switch/list_tile_switch.dart';

class UserInfo extends StatefulWidget {
  @override
  _UserInfoState createState() => _UserInfoState();
}
class _UserInfoState extends State<UserInfo>{
  bool _value = false;
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
          Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: userTitle('User Settings')
          ),
          Divider(
            thickness: 1,
            color: Colors.amber,
          ),
    ListTileSwitch(
    value: _value,
    leading: Icon(Ionicons.md_moon),
    onChanged: (value) {
    setState(() {
    _value = value;
    });
    },
    visualDensity: VisualDensity.comfortable,
    switchType: SwitchType.cupertino,
    switchActiveColor: Colors.indigo,
    title: Text('Dark Theme'),
    ),
          userListTitle('Logout', '', 4, context),


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

import 'package:flutter/material.dart';

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Text('User info')
      ),
    );
  }

  Widget userInfoList(
      String title,
      String subTitle,
      int index,
      ) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Colors.grey.shade300,
        onTap: () {},
        child: ListTile(
          title: Text(title),
          subtitle: Text(subTitle == null ? 'Empty' : subTitle),
          leading: Icon(Icons.access_alarm),
          // trailing: IconButton(
          //   icon: Icon(Icons.edit),
          //   onPressed: () {},
          // ),
        ),
      ),
    );
  }

}
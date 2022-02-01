import 'package:flutter/material.dart';

class CartEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
          decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                 image: AssetImage('assets/images/store.png'))),
      )
    ]);
  }
}

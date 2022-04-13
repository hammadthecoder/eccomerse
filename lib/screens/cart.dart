import 'package:eccomerse/screens/cart_empty.dart';
import 'package:flutter/material.dart';

import 'cart_full.dart';

class Cart extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CartFull(),
      );

  }
}
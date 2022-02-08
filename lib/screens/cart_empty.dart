import 'package:eccomerse/consts/colors.dart';
import 'package:eccomerse/provider/dar_theme_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartEmpty extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final themeChange = Provider.of<DarkThemeProvider>(context);
    return Column(
        crossAxisAlignment:CrossAxisAlignment.center,
        children: [
      Container(
        margin: EdgeInsets.only(top: 80),
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.4,
        decoration: const BoxDecoration(
            image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/images/store.png'))),
      ),
      Text(
        "Your cart is empty",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: Theme.of(context).textSelectionColor,
            fontSize: 36,
            fontWeight: FontWeight.w600),
      ),
      SizedBox(height: 30,),
      Text(
        "Looks like you didnt\'t \n  add anything to your cart yet",
        textAlign: TextAlign.center,
        style: TextStyle(
            color: themeChange.darkTheme?Theme.of(context).disabledColor:ColorsConsts.subTitle,
            fontSize: 36,
            fontWeight: FontWeight.w600),
      ),
          SizedBox(height: 30,),
          Container(
            width:MediaQuery.of(context).size.width * 0.9,
            height:MediaQuery.of(context).size.width * 0.06,
            child: RaisedButton(onPressed: (){},
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(16),
    side: BorderSide(color:Colors.red),),
                color: Colors.cyan,
                child: Text(
                  "Shop now".toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Theme.of(context).textSelectionColor,
                      fontSize: 26,
                      fontWeight: FontWeight.w600),
                ),
    ),

          )
          
    ]);
  }
}

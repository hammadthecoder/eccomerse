import 'package:flutter/material.dart';

class CartFull extends StatefulWidget {
  const CartFull({Key? key}) : super(key: key);

  @override
  _CartFullState createState() => _CartFullState();
}

class _CartFullState extends State<CartFull> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,          6
      margin: const EdgeInsets.all(10),
     '   '
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            bottomRight: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0),
          ),
          color: Theme.of(context).backgroundColor),
      child: Row(
        children: [
          Container(
            width: 130,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage(
                    'https://printo.ae/storage/1168/conversions/jHWuJzVK2MhYYp7N-medium.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          Flexible(
            child: Column(
              children: [
                Row(
                  children: [
                    Flexible(
                      child: Text(
                        'title',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 16),
                      ),
                    ),
          Material(
            color: Colors.transparent,
             child: InkWell(
               borderRadius: BorderRadius.circular(32),
               onTap: (){},
               child: Container(
                 child: Icon(Icons.delete),

               ),
             ),
           )
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

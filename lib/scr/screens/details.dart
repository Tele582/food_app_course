import 'package:flutter/material.dart';
import 'package:food_app_course/scr/models/products.dart';

import '../helpers/style.dart';

// import '../style.dart';


class Details extends StatefulWidget {

  final Product product;

  Details({@required this.product});



  @override
  // ignore: missing_return
  _DetailsState createState() {
    // TODO: implement createState
    _DetailsState();
  }

}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            IconButton(onPressed: (){Navigator.pop(context);}, icon: Icon(Icons.arrow_back_ios)),
            Text(widget.product.name, style: TextStyle(color: black  ),)

          ],
        ),
      ),
    );
  }

}
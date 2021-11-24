import 'package:flutter/material.dart';
import 'package:food_app_course/scr/models/category.dart';

import '../helpers/style.dart';
import 'custom_text.dart';

List<Category> categoriesList = [
  Category(name: "Salad", image: "salad.png"),
  Category(name: "Steak", image: "steak.png"),
  Category(name: "Fast food", image: "sandwich.png"),
  Category(name: "Deserts", image: "ice-cream.png"),
Category(name: "Beer", image: "pint.png"),
Category(name: "Sea food", image: "fish.png")
];

class Categories extends StatelessWidget {
  // const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,

        itemBuilder: (_, index){
          return Padding(
          padding: const EdgeInsets.only(left: 12, right: 12),
          child: Column(
          children: [
          Container(
          decoration: BoxDecoration(
          color: white,
          boxShadow: [
          BoxShadow(
          color: red[50],
          offset: Offset(4,6),
          blurRadius: 20
          )
          ]
          ),
          child: Padding(padding: EdgeInsets.all(4),
          child: Image.asset("images/${categoriesList[index].image}", width: 50,),)

          ),
          SizedBox(height: 10,),
          CustomText(text: categoriesList[index].name, size: 14, colours: black,),

          ],
          ),
          );
        },
      ),
    );
  }
}




import 'package:flutter/material.dart';
import 'package:food_app_course/scr/helpers/screen_navigation.dart';
import 'package:food_app_course/scr/models/products.dart';
import 'package:food_app_course/scr/screens/details.dart';

import '../helpers/style.dart';
import 'custom_text.dart';

List<Product> productsList = [
  Product(name: "Cereals", price: 4.99, rating: 4.2, vendor: "GoodFood", wishList: true, image: "1.png"),
  Product(name: "Tacos", price: 11.99, rating: 4.8, vendor: "GoodFood", wishList: false, image: "5.png"),
  Product(name: "Cranberry", price: 12.99, rating: 3.9, vendor: "GoodFood", wishList: true, image: "pint.png"),

];

class Featured extends StatelessWidget {
  // const Featured({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 240,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productsList.length,
            itemBuilder: (_, index){
              return Padding(
                padding: const EdgeInsets.fromLTRB(12, 14, 16, 12),
                child: GestureDetector(
                  onTap: (){
                    changeScreen(_, Details(product: productsList[index],));

                  },
                  child: Container(
                    height: 220,
                    width: 200,
                    decoration: BoxDecoration(
                        color: white,
                        boxShadow: [
                          BoxShadow(
                              color: grey[50],
                              offset: Offset(15,5),
                              blurRadius: 30
                          )
                        ]
                    ),
                    child: Column(
                      children: [
                        Image.asset("images/${productsList[index].image}",
                          height: 140, width: 140,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CustomText(text: productsList[index].name,),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20),
                                    color: white,
                                    boxShadow: [
                                      BoxShadow(
                                          color: grey[300],
                                          offset: Offset(1,1),
                                          blurRadius: 4
                                      )
                                    ]
                                ),

                                child: Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: productsList[index].wishList ? Icon(
                                    Icons.favorite,
                                    color: red, size: 18,)
                                      : Icon(Icons.favorite_border,
                                        color: red, size: 18,),

                                ),
                              ),
                            )

                          ],
                        ),

                        // SizedBox(height: 1,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,

                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(left: 8.0),
                                  child: CustomText(
                                    text: productsList[index].rating.toString(),
                                    colours: grey, size: 14,),
                                ),
                                SizedBox(width: 2,),

                                Icon(Icons.star, color: red, size: 16,),
                                Icon(Icons.star, color: red, size: 16,),
                                Icon(Icons.star, color: red, size: 16,),

                                Icon(Icons.star, color: red, size: 16,),
                                Icon(Icons.star, color: grey, size: 16,),


                              ],
                            ),

                            Padding(
                              padding: const EdgeInsets.only(right: 8.0),
                              child: CustomText(text: "\$${productsList[index].price}", weight: FontWeight.bold,),


                            ),

                          ],
                        )

                      ],

                    ),

                  ),
                ),
              );
            })
    );
  }
}

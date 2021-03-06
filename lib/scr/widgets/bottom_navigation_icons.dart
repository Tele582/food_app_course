import 'package:flutter/material.dart';
import 'package:food_app_course/scr/widgets/custom_text.dart';

// import 'custom_text.dart';

class BottomNavIcon extends StatelessWidget {
  // const ({Key? key}) : super(key: key);

  final String image;
  final String name;

  const BottomNavIcon({Key key, this.image, this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Image.asset("images/$image", width: 20, height: 20,),
          SizedBox(height: 2,),
          CustomText(text: name,)
        ],
      ),
    );
  }
}

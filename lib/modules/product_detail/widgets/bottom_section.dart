import 'package:flutter/material.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     // color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(children: [
        IconButton(
          onPressed: (){}, 
          icon: Icon(
            Icons.favorite_outline,
            color:Colors.grey,
            size: 25,
            ),
        ),
        SizedBox(
          width: 15,
        ),
        Expanded(
          child: CustomButton("Add To Cart", (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text("Added"),
              duration: Duration(milliseconds: 1000),)
            );
          }),
        )
        
      ],),
    );
  }
}
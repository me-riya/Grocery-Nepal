import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:grocery_nepal/constants.dart';

import 'package:grocery_nepal/data/models/cartegory.dart';


class CategoryTile extends StatelessWidget {

  const CategoryTile({ required this.category, required this.isSelected});

  final Category category;
  final isSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        children:[
          SvgPicture.asset(
            category.icon, 
            height: 25, 
            width: 25, 
            color: isSelected?greenColor:greyColor,
          ),
          const SizedBox(
            width: 3,
          ),
          Text(
            category.name, 
            style: isSelected
            ?const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: greenColor,
            ):const TextStyle(
              color: greyColor,
            ),),
        ],
      ),
    );
  }
}
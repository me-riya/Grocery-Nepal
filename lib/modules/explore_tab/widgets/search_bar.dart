// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import '../../../constants.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.grey.shade200,
      ), 
      child: Row(children: [
        Icon(Icons.search),
        SizedBox(
          width: 10,
        ),
        Text('Search for products',style: TextStyle(color: greyColor),)
      ],),
    );
  }
}
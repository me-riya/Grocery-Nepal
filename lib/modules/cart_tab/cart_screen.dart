// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_nepal/modules/checkout/checkout_screen.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';
import '../../data/models/product.dart';
import '../../data/models/cart_item.dart';
import 'widgets/cart_item_tile.dart';

final List<CartItem> cartItems=[
  CartItem(
    Product(
      name: 'Potato', 
      desc: 'This is vegetable.', 
      catgeory: 'Veggies', 
      id: 1, 
      price: 150.0, 
      image: 'assets/images/images.png', 
      units: 'Kg'
    ),
    5  
  ),
  CartItem(
    Product(
      name: 'Potato', 
      desc: 'This is vegetable.', 
      catgeory: 'Veggies', 
      id: 1, 
      price: 150.0, 
      image: 'assets/images/images.png', 
      units: 'Kg'
    ),
    2  
  ),
  CartItem(
    Product(
      name: 'Potato', 
      desc: 'This is vegetable.', 
      catgeory: 'Veggies', 
      id: 1, 
      price: 150.0, 
      image: 'assets/images/images.png', 
      units: 'Kg'
    ),
    4  
  ),
];

class CartScreen extends StatelessWidget {
  const CartScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('My cart'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context,index) {
                return CartItemTile(cartItems[index]);
              }, 
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: CustomButton("Checkout ( Rs. 1200 )", (){
               Navigator.push(context, MaterialPageRoute(
                builder: (context){
                  return CheckoutScreen();
                }));
            }),
          ),
        ],
      )
    );
  }
}

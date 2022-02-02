import 'package:flutter/material.dart';
import 'package:grocery_nepal/data/models/cart_item.dart';
import '../../../constants.dart';
import 'counter_tile.dart';


class CartItemTile extends StatelessWidget {
  const CartItemTile(
    this.cartItem,
    {Key? key,}
  ) : super(key: key);

final CartItem cartItem;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Row(
              children: [
                Image.asset('${cartItem.product.image}',
                height: 50,),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${cartItem.product.name}', 
                        style: TextStyle(
                          fontSize: 16, 
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      Text(
                        'Per ${cartItem.product.units}', 
                        style: TextStyle(
                          fontSize: 12, 
                          color: greyColor
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      CounterTile(cartItem.quantity),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Column(
                  children:[
                    // IconButton(
                    //   onPressed: (){}, 
                    //   icon: Icon(
                    //     Icons.delete_outline, 
                    //     color: Colors.grey,
                    //   ),),
                    const InkWell(
                      child: Padding(
                        padding: EdgeInsets.all(5.0),
                        child: Icon(Icons.delete_outline, 
                            color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text("Rs. ${cartItem.product.price* cartItem.quantity}")
                  ],
                ),
              ],
            ),
          ),
          const Divider(
            thickness: 2,
          )

        ],
      ),

    );
  }
}

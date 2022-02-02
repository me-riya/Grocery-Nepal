import 'package:flutter/material.dart';
import 'package:grocery_nepal/constants.dart';
import 'package:grocery_nepal/modules/product_detail/product_detail_screen.dart';
import '../../../data/models/product.dart';

class ProductTile extends StatelessWidget {
  
  const ProductTile({required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context, 
          MaterialPageRoute(builder: 
          (context)=> ProductDetailScreen(product: product,))
        );
      },
      child: Container(
        width: 140,
        height: 180,
        decoration: BoxDecoration(
          boxShadow: [BoxShadow(
            color: Colors.grey.shade300,
            offset: const Offset(1,1),
            blurRadius: 1,
            spreadRadius: 2,
          )],
          borderRadius: BorderRadius.circular(15), 
          // border: Border.all(
          //   color: greyColor,
          // ),
          color: Colors.grey.shade50,
        ),
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(product.image)
              )
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              product.name, 
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              ),
            Text(
              'Per ${product.units}',
              style: TextStyle(color: greyColor, fontSize: 12),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Rs. ${product.price}'),
                const SizedBox(
                width: 5,
                ),
                Container(
                  height: 35,
                  width: 35,
                  decoration: BoxDecoration(
                    color: greenColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: InkWell(
                    onTap: (){
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content:
                        Text('Added to Cart'),
                        duration: Duration(milliseconds: 1000),
                        backgroundColor: greenColor,
                        ),
                      );
                    },
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

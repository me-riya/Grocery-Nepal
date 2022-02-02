import 'package:flutter/material.dart';

import 'category_tile.dart';
import '../../../data/models/cartegory.dart';
import 'product_tile.dart';
import '../../../data/models/product.dart';

final List<Category> categories =[
  Category(name: 'All',icon: 'assets/icons/all.svg'),
  Category(name: 'Fish',icon: 'assets/icons/fish.svg'),
  Category(name: 'Fruit',icon: 'assets/icons/fruit.svg'),
  Category(name: 'Meat',icon: 'assets/icons/meat.svg'),
  Category(name: 'Veggies',icon: 'assets/icons/vegetable.svg'),

];

final List<Product> products=[
  Product(name: 'Potato', desc: 'This is vegetable.', catgeory: 'Veggies', id: 1, price: 150.0, image: 'assets/images/images.png', units: 'Kg'),
  Product(name: 'Cabbage', desc: 'This is vegetable.', catgeory: 'Veggies', id: 2, price: 120.0, image: 'assets/images/images.png',units: 'Kg'),
  Product(name: 'Carrot', desc: 'This is vegetable.', catgeory: 'Veggies', id: 3, price: 110.0, image: 'assets/images/images.png',units: 'Kg'),
  Product(name: 'Apple', desc: 'This is fruit.', catgeory: 'Fruit', id: 4, price: 100.0, image: 'assets/images/images.png',units: 'Kg'),
  Product(name: 'Banana', desc: 'This is fruit.', catgeory: 'Fruit', id: 5, price: 100.0, image: 'assets/images/images.png',units: 'Dozen'),
  Product(name: 'Chicken', desc: 'This is meat.', catgeory: 'Meat', id: 6, price: 450.0, image: 'assets/images/images.png',units: 'Kg'),
  Product(name: 'Fish', desc: 'This is fish.', catgeory: 'Fish', id: 7, price: 650.0, image: 'assets/images/images.png',units: 'Kg'),
  Product(name: 'Pork', desc: 'This is meat.', catgeory: 'Meat', id: 8, price: 550.0, image: 'assets/images/images.png',units: 'Kg'),
];

class CategoryBar extends StatefulWidget {
  const CategoryBar({
    Key? key,
  }) : super(key: key);

  @override
  State<CategoryBar> createState() => _CategoryBarState();
}

class _CategoryBarState extends State<CategoryBar> {
  String selectedCategory='All';

  Widget getProducts(){
    List<Product> categoryItem =[];
    if(selectedCategory=='All'){
      categoryItem=products;
    }else{
      for(Product product in products){
        if(product.catgeory==selectedCategory){
          categoryItem.add(product);
        }
      }
    }
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 15,
        childAspectRatio: 140/180,
        mainAxisSpacing: 15,
      ), 
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      itemCount: categoryItem.length,
      itemBuilder: (context, index){
        return ProductTile(product: categoryItem[index],);
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 50,
          child: ListView.builder(
            padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 20),
            scrollDirection: Axis.horizontal,
            itemCount: categories.length,
            itemBuilder: (context, index){
              return InkWell(
                onTap: (){
                  setState(() {
                    selectedCategory=categories[index].name;
                  });
                },
                child: CategoryTile(
                  category:categories[index], 
                  isSelected: selectedCategory==categories[index].name,
                ),
              );
            }
          ),
        ),
       
        Expanded(
          child: getProducts(),
        ),
      ],

    );
  }
}


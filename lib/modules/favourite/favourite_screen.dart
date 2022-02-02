import 'package:flutter/material.dart';
import 'package:grocery_nepal/data/models/product.dart';



class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({ Key? key }) : super(key: key);

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  final List<Product> favourites= [Product(
  id: 1, 
  name: "Potato", 
  desc: "This is veg",
  price: 100,
  image: 'assets/images/images.png',
  units: "1 kg",
  catgeory: ""),
  Product(
  id: 1, 
  name: "Potato", 
  desc: "This is veg",
  price: 100,
  image: 'assets/images/images.png',
  units: "1 kg",
  catgeory: ""),
  Product(
  id: 1, 
  name: "Potato", 
  desc: "This is veg",
  price: 100,
  image: 'assets/images/images.png',
  units: "1 kg",
  catgeory: "")];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Favourites"),
      ),
      body: ListView.builder(
        itemCount: favourites.length,
        itemBuilder: (context,index)=> Card(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListTile(
              leading: Image.asset(favourites[index].image),
              title: Text(favourites[index].name),
              trailing: IconButton(onPressed: (){
                showDialog(context: context, 
                builder: (context)=>AlertDialog(
                  title:Text("Do you want to delete the item?"),
                  actions: [TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("Cancel")),
                  TextButton(onPressed: (){
                    setState(() {
                       favourites.removeAt(index);
                    });
                    Navigator.pop(context);
                  }, child: Text("Remove"))],
                ));
              }, 
              icon: Icon(Icons.delete_outline)),
            ),
          ),
        ) ),
    );
  }
}
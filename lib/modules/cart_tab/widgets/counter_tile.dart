import 'package:flutter/material.dart';

import '../../../constants.dart';

class CounterTile extends StatefulWidget {
 
  const CounterTile(
    this.quantity,
  {
    Key? key,
  }) : super(key: key);

  final int quantity;
  @override
  State<CounterTile> createState() => _CounterTileState();
}

class _CounterTileState extends State<CounterTile> {
   
  int count=1;

  @override
  void initState() {//one time initialization at starting of the application
    super.initState();
    count=widget.quantity;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: InkWell(
            onTap: (){
              if(count>1){
                setState(() {
                  count--;
                });
              }else{
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content:
                  Text('Cannot be less than 1'),
                  duration: Duration(milliseconds: 1000),
                  backgroundColor: greenColor,
                  ),
                );
              }              
            },
            child: const Icon(
              Icons.remove,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
          
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade300,
          ),
          margin: EdgeInsets.symmetric(horizontal: 5),
          padding: EdgeInsets.symmetric(vertical: 4,horizontal: 15),
          child: Text('$count'),  
        ),

        Container(
          height: 25,
          width: 25,
          decoration: BoxDecoration(
            color: greenColor,
            borderRadius: BorderRadius.circular(6),
          ),
          child: InkWell(
            onTap: (){
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(content:
              //   Text('Increased'),
              //   duration: Duration(milliseconds: 1000),
              //   backgroundColor: greenColor,
              //   ),
              // );
              setState(() {
                count++;
              });
              
            },
            child: const Icon(
                Icons.add,
              color: Colors.white,
              size: 16,
            ),
          ),
        ),
        
      ],
    );
  }
}
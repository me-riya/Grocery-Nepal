import 'package:flutter/material.dart';

import '../../../constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(this.label, this.onPressed);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical:15, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      onPressed: onPressed,
      color: greenColor,
      textColor: Colors.white,
      elevation: 0,
      child:SizedBox(
        width: MediaQuery.of(context).size.width*0.5,
        child: Stack(
          children: [
            Center(
              child: Text(label, style: TextStyle(fontSize: 18),)
            ),            
          ],
        )
      ),
    );
  }
}


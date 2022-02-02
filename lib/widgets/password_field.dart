import 'package:flutter/material.dart';

import '../constants.dart';

class PasswordField extends StatefulWidget {

  const PasswordField(this.label, { required this.controller});

  final String label;
  final TextEditingController controller;
  

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {

  bool isVisible=false;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: !isVisible,
      style: const TextStyle(fontWeight: FontWeight.bold),
      cursorColor: Colors.black,
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: (){
            setState(() {
              isVisible=!isVisible;
            });
          },
          child: Icon(
            isVisible?Icons.visibility_off:Icons.visibility, 
            color: greyColor,
          ),
        ),
        labelText: widget.label,
        labelStyle: const TextStyle(color: greenColor),
        focusedBorder: const UnderlineInputBorder(
          borderSide:  BorderSide(
            color: greenColor,
            width: 2
          ),
        ),
      ),
    );
  }
}
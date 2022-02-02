import 'package:flutter/material.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';
import 'package:grocery_nepal/widgets/input_field.dart';

class EditDetailsScreen extends StatelessWidget {
  const EditDetailsScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 30,horizontal: 20),
          child: Column(
            children: [
            const InputField(
              "Full Name",
              inputType: TextInputType.name,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 20,  
            ),
            const InputField(
              "Email",
              inputType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
            ),
            const SizedBox(
              height: 30,
            ),
            CustomButton("Update Details", (){
               Navigator.pop(context);
            }),   
          ],),
        ),),
    );
  }
}
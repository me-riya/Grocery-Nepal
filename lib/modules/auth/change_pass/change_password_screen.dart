import 'package:flutter/material.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';
import 'package:grocery_nepal/widgets/password_field.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController oldPasswordController = TextEditingController();
    final TextEditingController newPasswordController = TextEditingController();
    final TextEditingController confirmPasswordController = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: Text("Change Password"),),
      body: SingleChildScrollView(child: 
      Padding(
        padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
        child: Column(children: [
          PasswordField("Old Password", controller: oldPasswordController,),
          const SizedBox(
            height: 20,  
          ),
          PasswordField("New Password", controller: newPasswordController,),
          const SizedBox(
            height: 20,  
          ),
          PasswordField("Confirm Password", controller: confirmPasswordController,),
          const SizedBox(
            height: 30,  
          ),
          CustomButton("Change Password", (){
            if(newPasswordController.text.trim().isEmpty){
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Password should not be empty!!"))
              );
            }else if(newPasswordController.text.trim()==
            confirmPasswordController.text.trim()){
              Navigator.pop(context);
            }else{
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text("Password did not match!!"))
              );
            }

          }),
        ],),),),
    );
  }
}
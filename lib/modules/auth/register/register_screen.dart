import 'package:flutter/material.dart';
import 'package:grocery_nepal/constants.dart';
import 'package:grocery_nepal/widgets/input_field.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';
import 'package:grocery_nepal/widgets/password_field.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({ Key? key }) : super(key: key);

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {

  late final TextEditingController passwordController;
  late final TextEditingController confirmPasswordController;

  @override
  void initState() {
    
    super.initState();
    passwordController= TextEditingController();
    confirmPasswordController= TextEditingController();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
        elevation: 0,//remove back button
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Register", 
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,  
              ),
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
                height: 20,  
              ),
              const InputField(
                "Contact Number",
                inputType: TextInputType.phone,
                textInputAction: TextInputAction.next,
              ),
              const SizedBox(
                height: 20,  
              ),
              PasswordField("Password", controller: passwordController,),
              const SizedBox(
                height: 20,  
              ),
              PasswordField("Confirm Password", controller: confirmPasswordController,),
              const SizedBox(
                height: 30,  
              ),
              CustomButton("Sign Up", (){
                if(passwordController.text.trim().isEmpty){
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Password should not be empty!!"))
                  );
                }else if(passwordController.text.trim()==
                confirmPasswordController.text.trim()){
                  Navigator.popUntil(context, ModalRoute.withName('/'));
                }else{
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Password did not match!!"))
                  );
                }
  
              }),
              const SizedBox(
                height: 30,  
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Already have an account?"),
                  TextButton(
                    onPressed: (){
                      Navigator.pop(context);
                    }, 
                    child: const Text(
                      "Login Now",
                      style: TextStyle(
                        color: greenColor
                      ),
                    ),
                  ),
                ],
              ),
            ]
          ),
        ),
      )
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    confirmPasswordController.dispose();
    super.dispose();
  }
}
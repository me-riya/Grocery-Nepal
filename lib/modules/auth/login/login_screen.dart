import 'package:flutter/material.dart';
import 'package:grocery_nepal/constants.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';
import 'package:grocery_nepal/widgets/input_field.dart';
import 'package:grocery_nepal/widgets/password_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  late final TextEditingController passwordController;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    passwordController= TextEditingController();
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
                "Login", 
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 30,  
              ),
              const InputField(
                "Email", 
                inputType: TextInputType.emailAddress,
                textInputAction: TextInputAction.next,),
              const SizedBox(
                height: 20,  
              ),
              PasswordField("Password", controller: passwordController,),
              const SizedBox(
                height: 30,  
              ),
              CustomButton("Sign In", (){
                Navigator.pop(context);
              }),
              const SizedBox(
                height: 30,  
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Text("Don't have an account?"),
                TextButton(
                  onPressed: (){
                    Navigator.pushNamed(context, '/register');
                  }, 
                  child: const Text(
                    "Register Now",
                    style: TextStyle(
                      color: greenColor
                    ),),
                ),
              ],)
              
            ]
          ),
        ),
      )
      
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    passwordController.dispose();
    super.dispose();
  }
}

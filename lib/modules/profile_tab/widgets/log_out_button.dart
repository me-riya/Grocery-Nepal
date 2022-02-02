import 'package:flutter/material.dart';

import '../../../constants.dart';

class LogOutButton extends StatelessWidget {
  const LogOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical:15, horizontal: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
      onPressed: (){
        Navigator.pushNamed(context, '/login');
        // Navigator.push(
        //   context, 
        //   MaterialPageRoute(
        //     builder: (context) => const LoginScreen()
        //   ),
        // );
      },
      color: Colors.grey.shade300,
      textColor: greenColor,
      elevation: 0,
      child:SizedBox(
        width: MediaQuery.of(context).size.width*0.5,
        child: Stack(
          children: const [
            Center(
              child: Text("Sign out", style: TextStyle(fontSize: 18),)
            ),
            Icon(Icons.logout),
            
          ],
        )
      ),
    );
  }
}


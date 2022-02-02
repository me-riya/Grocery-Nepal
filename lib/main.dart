import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:grocery_nepal/app_controller.dart';
import 'package:grocery_nepal/constants.dart';
import 'package:grocery_nepal/modules/auth/login/login_screen.dart';
import 'package:grocery_nepal/modules/auth/register/register_screen.dart';
import 'package:grocery_nepal/modules/home/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          // systemOverlayStyle: SystemUiOverlayStyle(
          //   statusBarColor: Theme.of(context).scaffoldBackgroundColor,
          //   statusBarIconBrightness: Brightness.dark,
          //   statusBarBrightness: Brightness.light,
          // ),
          color: greenColor, 
          elevation: 1,
          // titleTextStyle: const TextStyle(
          //   color: Colors.black,
          //   fontWeight: FontWeight.w600,
          //   fontSize: 18,
          // ),
          centerTitle: true,
        ),
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme, 
        ),
      ),
      title: "Grocery Nepal",
      debugShowCheckedModeBanner: false,
      // home: const HomeScreen(),
      initialBinding: BindingsBuilder(
        (){
          Get.put(AppController(),permanent: true);
        }
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/login': (contex)=> const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
      },
    );
  }
}


 // drawer: Drawer(
        //   child: Column(
        //     children: const [
        //       ListTile(
        //         leading: Icon(Icons.home),
        //         title: Text("Home"),
        //       ),
        //       ListTile(
        //         leading: Icon(Icons.settings),
        //         title: Text("Settings"),
        //       )
        //     ],
        //     ),
        // ),
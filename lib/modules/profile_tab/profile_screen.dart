// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:grocery_nepal/modules/auth/change_pass/change_password_screen.dart';
import 'package:grocery_nepal/modules/contact_us/contact_form.dart';
import 'package:grocery_nepal/modules/edit_details/edit_details_screen.dart';
import 'package:grocery_nepal/modules/favourite/favourite_screen.dart';
import 'package:grocery_nepal/modules/profile_tab/about_us/about_us_screen.dart';
import 'widgets/settings_tile.dart';
import 'widgets/log_out_button.dart';
import 'widgets/profile_tile.dart';


class ProfileScreen extends StatelessWidget {
  const ProfileScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ProfileTile(),
            Divider(
              thickness: 2,
            ),
            
            Container(
              child: Column(
                children: [
                  SettingsTile(icon:Icons.favorite_outline,label:'Favorites', onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return FavouriteScreen();
                      }));
                  },),
                  SettingsTile(icon:Icons.edit,label:'Edit Profile', onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return EditDetailsScreen();
                      }));
                  },),
                  SettingsTile(icon:Icons.lock_outline,label:'Change Password', onPressed: (){
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return ChangePasswordScreen();
                      }));
                  },),
                  SettingsTile(icon:Icons.help_outline,label:'About Us', onPressed: (){
                     Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return AboutUsScreen();
                      }));
                  },),
                  SettingsTile(icon:Icons.phone_outlined,label:'Contact Us', onPressed: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context){
                        return ContactForm();
                      }));
                  },),
                  
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            LogOutButton(),
          ],
        ),
      ),
     
    );
  }
}



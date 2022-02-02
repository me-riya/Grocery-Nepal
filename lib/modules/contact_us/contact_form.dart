import 'package:flutter/material.dart';
import 'package:grocery_nepal/widgets/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactForm extends StatelessWidget {
   final inputDecoration = const InputDecoration(
    hintStyle: TextStyle(color: Colors.grey),
    contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
    labelStyle: TextStyle(color: Colors.grey),
    border: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.grey, width: 1.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: Colors.black, width: 1.5),
    ),
  );

  @override
  Widget build(BuildContext context) {
    String subject='';
    String msg='';

    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: ListView(
          children: [
            const SizedBox(
              height: 15.0,
            ),
            TextField(
              textInputAction: TextInputAction.next,
              textAlign: TextAlign.left,
              onChanged: (value) {
                subject=value;
              },
              decoration: inputDecoration.copyWith(labelText: 'Subject'),
            ),
            const SizedBox(
              height: 15.0,
            ),
            TextField(
                maxLines: 5,
                textInputAction: TextInputAction.done,
                textAlign: TextAlign.left,
                onChanged: (value) {
                  msg=value;
                },
                decoration: inputDecoration.copyWith(labelText: 'Message')),
            const SizedBox(
              height: 24.0,
            ),
            CustomButton(
              'SEND',
              () {
                launch("mailto:nakarmiriya@gmail.com?subject="+subject+"&body="+msg);
              },
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
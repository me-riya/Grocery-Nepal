import 'package:flutter/material.dart';


class ProfileTile extends StatelessWidget {
  const ProfileTile({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children:[
          const CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/images/images.png'),
          ),
          const SizedBox(
            width: 2,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
              'Riya Nakarmi', 
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
              'nakarmiriya@gmail.com', 
              ),
          ],)
        ],
      ),
    );
  }
}
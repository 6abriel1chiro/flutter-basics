import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String name;
  final String email;

  const ProfilePage({Key? key, required this.name, required this.email})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.jpeg'),
            radius: 50,
          ),
          SizedBox(height: 20),
          Text(
            'Name: $name', // Display user's name
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          Text(
            'Email: $email', // Display user's email
            style: Theme.of(context).textTheme.headline1,
          ),
          SizedBox(height: 10),
          Image(
            image: AssetImage('assets/bg.jpg'),
            height: 200,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}

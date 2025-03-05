import 'package:flutter/material.dart';

class UserProfileScreen extends StatefulWidget {
  const UserProfileScreen({super.key});

  @override
  State<UserProfileScreen> createState() => User_ProfileScreenState();
}

class User_ProfileScreenState extends State<UserProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("User Profile Page"),
      ),
      body: Text("User Profile page"),
    );
  }
}
